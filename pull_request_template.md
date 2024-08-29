# Pull Request Template

## Title

Fluentd Plugin to Act as a Lineage Validator for openlineage-proxy-fluentd

## Description

This pull request includes several changes to the configuration files, primarily focused on updating library versions and modifying module configurations. The most important changes include updating library versions, adding new libraries, and modifying module configurations.

## Related Issues

* Updated the `bundler` library version from `v2.5.16` to `v2.5.17` in `.idea/fluentd.iml`.
* Added new libraries `json (v2.7.1)`, `minitar (v0.9)`, `rusty_json_schema (v0.15.0)`, `thermite (v0.13.0)`, and `tomlrb (v1.3.0)` in `.idea/fluentd.iml`. [[1]](diffhunk://#diff-bf2d62f0b21b7685391c90204fe2b06d5fd3a80388e01faddd9bfae0274c54b1R114-L116) [[2]](diffhunk://#diff-bf2d62f0b21b7685391c90204fe2b06d5fd3a80388e01faddd9bfae0274c54b1R156) [[3]](diffhunk://#diff-bf2d62f0b21b7685391c90204fe2b06d5fd3a80388e01faddd9bfae0274c54b1R198-R199)

## Checklist

- [x] My code follows the code style of this project.
- [x] I have performed a self-review of my own code.
- [x] I have commented my code, particularly in hard-to-understand areas.
- [x] I have made corresponding changes to the documentation.
- [x] My changes generate no new warnings.
- [x] I have added tests that prove my fix is effective or that my feature works.
- [x] New and existing unit tests pass locally with my changes.

## Testing

Library tests have been included using the Rakefile for ruby projects.

## Additional Notes

* Removed obsolete module entries for `bigdecimal-3.1`, `connection_pool-2.4`, `drb-2.21`, and `specifications1` in `.idea/modules.xml`. [[1]](diffhunk://#diff-0aae258f1732eac2acd4fcdd1af6d0737b4ec8d233136c3ba7c40b6d49aeda50L6-L20) [[2]](diffhunk://#diff-0aae258f1732eac2acd4fcdd1af6d0737b4ec8d233136c3ba7c40b6d49aeda50L32)
* Added `ModuleRunConfigurationManager` component to `.idea/modules/benchmark-memory-0.2.iml`.
* Added detailed library configurations for `power_assert`, `rake`, `rake-compiler`, `rake-compiler-dock`, and `test-unit` in `.idea/modules/certstore_c-0.1.iml`.

These changes ensure that the project configuration is up-to-date with the latest library versions and includes necessary module configurations for better project management.