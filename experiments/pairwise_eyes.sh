#!/bin/sh

if [ "$#" -lt 2 ]; then
  echo "usage: $0 FILE FILE [FILE ...]" >&2
  exit 2
fi

if root=$(git rev-parse --show-toplevel 2>/dev/null); then
  :
else
  root=$(pwd)
fi

candidate_list=$(mktemp)
trap 'rm -f "$candidate_list"' EXIT HUP INT TERM

find "$root" -type f -name '*.sh' -print > "$candidate_list"

check_pair() {
  left=$1
  right=$2
  found=0

  while IFS= read -r candidate; do
    name=$(basename "$candidate")
    case "$name" in
      compare*|check*|*mock*) ;;
      *) continue ;;
    esac

    # A zero-argument mock is not pairwise eyes. Require visible use of
    # both positional arguments before trying the candidate.
    grep -q '\$1' "$candidate" || continue
    grep -q '\$2' "$candidate" || continue

    if left_to_right=$(sh "$candidate" "$left" "$right" 2>&1); then
      left_status=0
    else
      left_status=$?
    fi

    if right_to_left=$(sh "$candidate" "$right" "$left" 2>&1); then
      right_status=0
    else
      right_status=$?
    fi

    if [ "$left_status" -eq 0 ] && [ "$right_status" -eq 0 ]; then
      echo "EYES: $left <-> $right"
      echo "  yeah: $candidate looks at both orders of these two files"
      [ -n "$left_to_right" ] && echo "  $left -> $right: $left_to_right"
      [ -n "$right_to_left" ] && echo "  $right -> $left: $right_to_left"
      found=1
    fi
  done < "$candidate_list"

  if [ "$found" -eq 0 ]; then
    echo "NO EYES: $left <-> $right"
    echo "  we don't even have eyes on the two-way relationship between these two things"
  fi
}

while [ "$#" -gt 1 ]; do
  left=$1
  shift
  for right do
    check_pair "$left" "$right"
  done
done
