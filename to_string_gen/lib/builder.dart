import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';
import 'package:to_string_gen/src/translator.dart';

Builder toStringPartBuildFactory(BuilderOptions options) =>
    SharedPartBuilder([ToStringGenTor()], 'to_string');

Builder toStringLibraryBuildFactory(BuilderOptions options) =>
    LibraryBuilder(ToStringGenTor());
