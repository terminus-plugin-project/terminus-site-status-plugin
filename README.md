# Terminus Site Status

[![Terminus v1.x Compatible](https://img.shields.io/badge/terminus-v1.x-green.svg)](https://github.com/terminus-plugin-project/terminus-site-status-plugin/tree/1.x)
[![Terminus v0.x Compatible](https://img.shields.io/badge/terminus-v0.x-green.svg)](https://github.com/terminus-plugin-project/terminus-site-status-plugin/tree/0.x)

Terminus plugin that displays the status of all available Pantheon site environments.

## Installation:

Refer to the [Terminus Wiki](https://github.com/pantheon-systems/terminus/wiki/Plugins).

## Usage:
```
$ terminus sites status [--env=<env>] [--team] [--owner] [--org=<id>] [--name=<regex>] [--cached]
```
The associative arguments are all optional and the same filtering rules as the `terminus sites list` command apply.

The output will be displayed in a table format.  The `Condition` column displays whether there are pending filesystem changes.

If the `Condition` column displays `dirty`, it means the code is out of sync with the repository.

## Examples:
```
$ terminus sites status
```
Report the status of all available site environments
```
$ terminus sites status --env=dev
```
Report the status of the dev environment only of all available sites
