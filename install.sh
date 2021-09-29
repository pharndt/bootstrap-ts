#!/bin/bash
set -e

if [ -z "$(ls -A .)" ]; then
  git clone git@github1.vg.vector.int:vispat/bootstrap-ts.git .tsbs
  ./.tsbs/bootstrap-ts.sh
  rm -rf ./.tsbs
else
  echo "Target folder is not empty. Exit."
  exit 1
fi
