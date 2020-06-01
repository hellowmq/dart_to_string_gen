# dart_to_string_gen

 This is a practice of Dart source_gen. Use extension method to generate toString method.

## How To Use

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

3. Execute build_runner on the command line

    - In a Dart project
     
        run this command on Command Line
    
        ```
        pub get 
        pub run build_runner build
        ```

    - In a Flutter project

        run this command on Command Line
    
        ```
        flutter pub get 
        flutter pub run build_runner build
        ```
## More 

💻 still developing...

Feel free to dive in! [Open an issue](https://github.com/hellowmq/dart_to_string_gen/issues/new) or submit PRs.

## Link

[dart-lang/build](https://github.com/dart-lang/build)

[dart-lang/source_gen](https://github.com/dart-lang/source_gen)

## Maintainers

[@hellowmq](https://github.com/hellowmq).

## License

[MIT](LICENSE) © hellowmq

## Todo

- hide some field in toString output.
- 
