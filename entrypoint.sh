#!/usr/bin/env bash

set -e

tw_lines=""  # Lines containing trailing whitespaces.

# TODO (harupy): Check only changed files.
for file in $(git ls-files '*.md'| sed -e 's/^/.\//')
do
  lines=$(grep -ErnIH " +$" $file | cut -f-2 -d ":")
  if [ -n "$lines" ]; then
    tw_lines+=$([[ -z "$tw_lines" ]] && echo "$lines" || echo $'\n'"$lines")
  fi
done

exit_code=0

# If tw_lines is not empty, change the exit code to 1 to fail the CI.
if [ -n "$tw_lines" ]; then
  echo -e "\n***** Lines containing trailing whitespace *****\n"
  echo -e "${tw_lines[@]}"
  echo -e "\nFailed.\n"
  exit_code=1
fi

exit $exit_code
