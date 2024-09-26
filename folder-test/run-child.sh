#!/bin/bash
if ! command -v mvn --version &> /dev/null
then
  echo "mvn could not be found"
  exit 1
fi

echo "Maven has found"

mvn -f "./$(dirname "$0")/../my-app" versions:set -DnewVersion="1.2.2" -DgenerateBackupPoms=false