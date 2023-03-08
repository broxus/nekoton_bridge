import 'package:reflectable/reflectable.dart';

/// Annotate with this class to enable reflection.
class Reflector extends Reflectable {
  const Reflector() : super(invokingCapability); // Request the capability to invoke methods.
}

/// Use this as annotation for your class to generate reflectable interface.
/// Example:
/// ```
/// @reflector
/// class MyClass {}
/// ```
const reflector = Reflector();