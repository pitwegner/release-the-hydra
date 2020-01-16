#!/usr/bin/env bats

setup() {
  source src/git.sh
}

@test "git>file_changes recognizes added files as changed files" {
  FROM_COMMIT=7c5b539
  TO_COMMIT=b108196

  run files_changed $FROM_COMMIT $TO_COMMIT  

  [ $status -eq 0 ]
  [ "${lines[1]}" = "tests/it-works.bats" ]
}


@test "git>file_changes recognizes modified files as changed files" {
  FROM_COMMIT=7c5b539
  TO_COMMIT=b108196

  run files_changed $FROM_COMMIT $TO_COMMIT  
  [ $status -eq 0 ]
  [ "${lines[0]}" = "README.md" ]
}
