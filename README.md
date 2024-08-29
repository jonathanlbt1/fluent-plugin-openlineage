# Fluent-plugin-nuopenlineage-light, a plugin for [Fluentd](https://www.fluentd.org)
[![Gem Version](https://badge.fury.io/rb/fluent-plugin-nuopenlineage-light.svg)](https://badge.fury.io/rb/fluent-plugin-nuopenlineage-light)

fluent-plugin-nuopenlineage-light is a Fluentd plugin designed to validate whether a JSON document conforms to the OpenLineage schema. It performs basic validation without extensive verification, making it an ideal solution for Nubank, which has recently adopted the lineage concept and is in the process of fully leveraging lineage events.
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



For any additional information, you can check out Fluentd official documentation on https://docs.fluentd.org/ 
