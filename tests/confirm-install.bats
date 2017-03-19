#!/usr/bin/env bats

#
# confirm-install.bats
#
# Ensure that Terminus and the Composer plugin have been installed correctly
#

@test "confirm terminus version" {
  terminus --version
}

@test "get help on plugin command" {
  run terminus help site:status
  [[ "$output" == *"Displays the status of all site environments."* ]]
  [ "$status" -eq 0 ]
}
