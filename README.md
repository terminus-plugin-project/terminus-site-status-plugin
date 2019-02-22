# Terminus Site Status Plugin

Version 1.x

[![CircleCI](https://circleci.com/gh/terminus-plugin-project/terminus-site-status-plugin.svg?style=shield)](https://circleci.com/gh/terminus-plugin-project/terminus-site-status-plugin)
[![Terminus v2.x Compatible](https://img.shields.io/badge/terminus-v2.x-green.svg)](https://github.com/terminus-plugin-project/terminus-site-status-plugin/tree/2.x)
[![Terminus v1.x Compatible](https://img.shields.io/badge/terminus-v1.x-green.svg)](https://github.com/terminus-plugin-project/terminus-site-status-plugin/tree/1.x)
[![Terminus v0.x Compatible](https://img.shields.io/badge/terminus-v0.x-green.svg)](https://github.com/terminus-plugin-project/terminus-site-status-plugin/tree/0.x)

Terminus plugin that displays the status of all available [Pantheon](https://www.pantheon.io) site environments.

## Usage:
```
$ terminus site:status [--env=<env>] [--team] [--owner] [--org=<id>] [--name=<regex>]
```
The associative arguments are all optional and the same filtering rules as the `terminus site:list` command apply.

The output will be displayed in a table format.  The `Condition` column displays whether there are pending filesystem changes.

If the `Condition` column displays `dirty`, it means the code is out of sync with the repository.

## Examples:
Display the status of all available site environments.
```
terminus site:status
```

Display the status of all dev site environments only.
```
terminus site:status --env=dev
```

Display the status of all site enviroments that contain 'awesome' in the name.
```
terminus site:status --name=awesome
```

Learn more about [Terminus](https://pantheon.io/docs/terminus/) and [Terminus Plugins](https://pantheon.io/docs/terminus/plugins/).

## Installation:
For installation help, see [Manage Plugins](https://pantheon.io/docs/terminus/plugins/).

```
mkdir -p ~/.terminus/plugins
composer create-project -d ~/.terminus/plugins terminus-plugin-project/terminus-site-status-plugin:~2
```

## Configuration:

This plugin requires no configuration to use.

## Testing:

```
cd ~/.terminus/plugins/terminus-site-status-plugin
composer install
composer test
```

## Help:
Run `terminus help site:status` for help.
