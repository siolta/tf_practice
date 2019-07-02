#!/usr/bin/env bash
set -e

# Formats any *.tf files according to the hashicorp convention
files=$(git diff --cached --name-only --diff-filter=d)
for f in $files
do
  if [ -e "$f" ] && [[ $f == *.tf ]]; then
    #terraform validate `dirname $f`
    terraform fmt $f
    git add $f
  fi
done


#!/usr/bin/env bash
set -e

# Formats any *.tf files according to the hashicorp convention
files=$(git diff --cached --name-only)
for f in $files
do
  if [ -e "$f" ] && [[ $f == *.tf ]]; then
    /usr/local/bin/terraform fmt -check=true $f
  fi
done
