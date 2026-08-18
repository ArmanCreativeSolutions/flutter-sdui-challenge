import 'dart:io';

/// Reads a JSON fixture file as a raw string for use in data-layer
/// tests (kept separate from `assets/` so tests don't depend on the
/// Flutter asset bundle / `rootBundle`).
String fixture(String name) => File('test/fixtures/$name').readAsStringSync();
