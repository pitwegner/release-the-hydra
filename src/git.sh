#!/usr/bin/env

set -o errexit
set -o pipefail


function files_changed() {
  FROM_COMMIT=$1
  TO_COMMIT=$2

  git diff --name-only $FROM_COMMIT..$TO_COMMIT
}
