#!/usr/bin/env bats

#
# test-output.bats
#
# Test plugin command output
#

@test "output of plugin command" {
  run terminus site:status
  [[ "$output" == *"dev"* ]]
  [ "$status" -eq 0 ]
}
