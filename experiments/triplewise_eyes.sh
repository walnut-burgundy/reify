#!/bin/sh

if [ "$#" -lt 3 ]; then
  echo "usage: $0 FILE FILE FILE [FILE ...]" >&2
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

missing=0

check_triple() {
  a=$1
  b=$2
  c=$3
  found=0

  while IFS= read -r candidate; do
    name=$(basename "$candidate")
    case "$name" in
      compare*|check*|*mock*) ;;
      *) continue ;;
    esac

    # Pairwise eyes do not count as three-way eyes. Require visible use of
    # all three positional arguments before trying the candidate.
    grep -q '\$1' "$candidate" || continue
    grep -q '\$2' "$candidate" || continue
    grep -q '\$3' "$candidate" || continue

    # A three-way relationship has six argument orders. A candidate only
    # counts as eyes on this triple if it can inspect all six permutations.
    if out_abc=$(sh "$candidate" "$a" "$b" "$c" 2>&1) &&
       out_acb=$(sh "$candidate" "$a" "$c" "$b" 2>&1) &&
       out_bac=$(sh "$candidate" "$b" "$a" "$c" 2>&1) &&
       out_bca=$(sh "$candidate" "$b" "$c" "$a" 2>&1) &&
       out_cab=$(sh "$candidate" "$c" "$a" "$b" 2>&1) &&
       out_cba=$(sh "$candidate" "$c" "$b" "$a" 2>&1); then
      echo "EYES: $a <-> $b <-> $c"
      echo "  yeah: $candidate looks at all six orders of these three files"
      [ -n "$out_abc" ] && echo "  $a -> $b -> $c: $out_abc"
      [ -n "$out_acb" ] && echo "  $a -> $c -> $b: $out_acb"
      [ -n "$out_bac" ] && echo "  $b -> $a -> $c: $out_bac"
      [ -n "$out_bca" ] && echo "  $b -> $c -> $a: $out_bca"
      [ -n "$out_cab" ] && echo "  $c -> $a -> $b: $out_cab"
      [ -n "$out_cba" ] && echo "  $c -> $b -> $a: $out_cba"
      found=1
    fi
  done < "$candidate_list"

  if [ "$found" -eq 0 ]; then
    echo "NO EYES: $a <-> $b <-> $c"
    echo "  we don't have eyes on the three-way relationship among these three things"
    echo "  AB, BC, and AC investigations do not establish ABC"
    missing=1
  fi
}

i=0
for a in "$@"; do
  i=$((i + 1))
  j=0
  for b in "$@"; do
    j=$((j + 1))
    [ "$j" -gt "$i" ] || continue
    k=0
    for c in "$@"; do
      k=$((k + 1))
      [ "$k" -gt "$j" ] || continue
      check_triple "$a" "$b" "$c"
    done
  done
done

if [ "$missing" -eq 0 ]; then
  echo "COMPLETE: every triple has three-way eyes"
else
  echo "INCOMPLETE: at least one triple has no three-way eyes"
  exit 1
fi
