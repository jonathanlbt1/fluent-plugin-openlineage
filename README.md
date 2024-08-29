# Fluent-plugin-nuopenlineage-light, a plugin for [Fluentd](https://www.fluentd.org)
[![Gem Version](https://badge.fury.io/rb/fluent-plugin-nuopenlineage-light.svg)](https://badge.fury.io/rb/fluent-plugin-nuopenlineage-light)

fluent-plugin-openlineage-light is a Fluentd plugin that verifies if a JSON matches the OpenLineage schema, but doesn't go deeper into the verification. This plugin is ideal for companies that have recently joined the lineage idea but haven't been able to apply all of its feature yet. 
It is intended to be used together with a [Fluentd Application](https://github.com/fluent/fluentd).

## Requirements

| fluent-plugin-prometheus | fluentd    | ruby   |
|--------------------------|------------|--------|
| 1.x.y                    | >= v1.9.1  | >= 2.4 |
| 1.[0-7].y                | >= v0.14.8 | >= 2.1 |
| 0.x.y                    | >= v0.12.0 | >= 1.9 |

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'fluent-plugin-nuopenlineage-light'
```

And then execute:

    $ bundle

Or install it yourself using one of the following:

    $ gem install fluent-plugin-nuopenlineage-light

    $ fluent-gem install fluent-plugin-nuopenlineage-light

## Usage

fluentd-plugin-nuopenlineage-light include only one plugin.

- `openlineage` parse plugin



For any additional information, you can check out Fluentd official documentation on https://docs.fluentd.org/monitoring-fluentd/monitoring-prometheus#example-prometheus-queries# fluentd-openlineage-parser
