#!/bin/sh
set -eu

source_file=${1:-docs/examples/coupled-substitution.idric}

grep -F 'apply : CoupledSubstitution → Text → Maybe Text' "$source_file" >/dev/null
grep -F 'contains left_from text AND contains right_from text' "$source_file" >/dev/null

if grep -F 'fish_to_chickens' "$source_file" >/dev/null; then
  echo 'standalone fish_to_chickens operation is present' >&2
  exit 1
fi

sed_result=$(printf '%s\n' 'sharks circle the reef' |
  sed -e 's/sharks/foxes/g' -e 's/fish/chickens/g')

test "$sed_result" = 'foxes circle the reef'

printf '%s\n' 'coupled substitution regression: pass'
