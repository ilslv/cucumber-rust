### Current

#### Known issues:

- `Scenario Outline` is treated the same as `Outline` or `Example` in the parser ([gherkin/#19](https://github.com/bbqsrc/gherkin-rust/issues/19))

### [0.10.0] — ???
[0.10.0]: /../../tree/v0.10.0

- **Breaking change** Complete redesign:
  - Introduce new abstractions: `Parser`, `Runner`, `Writer`.
  - Provide reference implementations for those abstractions.
  - Add ability to run `Scenario`s concurrently.
  - Update book to reflect redesign.

### [0.9.0] — 2021-07-19
[0.9.0]: /../../tree/v0.9.0

- **Breaking change:** the second parameter in the test callbacks is now a `StepContext` object, which contains the `Step` as a `step` field.
- Feature: Add `before` and `after` lifecycle functions to the Cucumber builder
  - This function takes a selector for determining when to run 'before' or 'after', and a callback
- Fix: literal paths to .feature files will now work in the Cucumber builder
- Fix: remove unnecessary internal `Rc<T>` usage.

### [0.8.4] — 2021-02-18
[0.8.4]: /../../tree/v0.8.4

- Feature: add `language` argument to Cucumber builder to set default language for all feature files
- Feature: add `--debug` flag to always print stdout and stderr per step

### [0.8.3] — 2021-02-09
[0.8.3]: /../../tree/v0.8.3

- Update `t!` macro to support specifying type of world argument in closure

### [0.8.2] — 2021-01-30
[0.8.2]: /../../tree/v0.8.2

- Re-export `async_trait::async_trait` and `futures` crate for convenience
- Update examples to use `tokio`

### [0.8.1] — 2021-01-30
[0.8.1]: /../../tree/v0.8.1

- Added proper i18n support via gherkin 0.9

### [0.8.0] — 2021-01-18
[0.8.0]: /../../tree/v0.8.0

- Fixed filtering of tests by tag ([#67](https://github.com/bbqsrc/cucumber-rust/issues/67))
- Implemented failure reporting ([#91](https://github.com/bbqsrc/cucumber-rust/issues/91))
- Removed unnecessary dependent traits from `World` trait
- Added proc-macro variant (thanks Ilya Solovyiov and Kai Ren)

### [0.7.3] — 2020-09-20
[0.7.3]: /../../tree/v0.7.3

- Fix missing mut in t! macro for regexes ([#68](https://github.com/bbqsrc/cucumber-rust/issues/68)) — thanks [@stefanpieck](https://github.com/stefanpieck)!

### [0.7.2] — 2020-09-14
[0.7.2]: /../../tree/v0.7.2

- Enforce `UnwindSafe` on async test types

### [0.7.1] — 2020-09-09
[0.7.1]: /../../tree/v0.7.1

- Fix issue with `t!` macro for unbraced blocks

### [0.7.0] — 2020-09-07
[0.7.0]: /../../tree/v0.7.0

- **Breaking changes**: the macro approach provided in 0.6.x and lower has been entirely removed. It was hard to maintain and limited maintenance of the tests themselves.
- A new builder approach has been implemented.
- Support for asynchronous tests has been implemented — this is runtime agnostic.
