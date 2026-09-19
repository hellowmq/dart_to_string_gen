# dart_to_string_gen

> Historical Dart 2 `source_gen` experiment, preserved as a learning example.

The repository explores generating a private `_ToString()` extension for annotated Dart classes, then delegating the class's `toString()` implementation to the generated code.

## Repository layout

- `to_string`: the `@ToString()` annotation.
- `to_string_gen`: the generator and builder configuration.
- `example`: sample annotated classes, generated `.g.dart` files, and tests.

## Historical usage

1. Add @ToString() before your Class definition.
```dart
@ToString()
class Animal{}
```

2. Add toString to your Class

```dart
  @override
  String toString() => this._ToString();
```

3. Execute the Dart 2-era `build_runner` workflow from `example/`:

```bash
cd example
pub get
pub run build_runner build
```

## Status

The packages constrain the Dart SDK to `<3.0.0` and depend on pre-null-safety versions of `source_gen`, `build_runner`, and `analyzer`. The repository has not been migrated or verified with current Dart/Flutter toolchains and is not presented as an actively maintained package. Use the checked-in generated examples to understand the experiment; expect migration work before using it in a modern project.

## Link

[dart-lang/build](https://github.com/dart-lang/build)

[dart-lang/source_gen](https://github.com/dart-lang/source_gen)

## License

[MIT](LICENSE) © hellowmq. Dependency licenses remain with their respective projects.

## Todo

- hide some field in toString output.
