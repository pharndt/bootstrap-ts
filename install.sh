#!/bin/bash
set -e

# created with https://fsymbols.com/text-art/
echo "=========================================================="
echo "█▀▀▄ █▀▀█ █▀▀█ ▀▀█▀▀ █▀▀ ▀▀█▀▀ █▀▀█ █▀▀█ █▀▀█ 　 ▀▀█▀▀ █▀▀"
echo "█▀▀▄ █░░█ █░░█ ░░█░░ ▀▀█ ░░█░░ █▄▄▀ █▄▄█ █░░█ 　 ░░█░░ ▀▀█"
echo "▀▀▀░ ▀▀▀▀ ▀▀▀▀ ░░▀░░ ▀▀▀ ░░▀░░ ▀░▀▀ ▀░░▀ █▀▀▀ 　 ░░▀░░ ▀▀▀"
echo "=========================================================="
echo ""

if [ -z "$(ls -A .)" ]; then
  git clone git@github1.vg.vector.int:vispat/bootstrap-ts.git .tsbs
  ./.tsbs/bootstrap-ts.sh
  rm -rf ./.tsbs
else
  echo "Target folder is not empty. Exit."
  exit 1
fi
