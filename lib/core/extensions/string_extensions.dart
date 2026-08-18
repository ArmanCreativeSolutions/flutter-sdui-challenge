import 'package:flutter/material.dart';

extension HexColor on String {
  /// Supports:
  /// - "#RGB"       (shorthand)
  /// - "#RRGGBB"
  /// - "#AARRGGBB"  (with alpha)
  Color toColor() {
    var hex = replaceAll('#', '').trim();

    if (hex.isEmpty) {
      throw FormatException('Invalid hex color: "$this"');
    }

    if (hex.length == 3) {
      hex = '${hex[0]}${hex[0]}${hex[1]}${hex[1]}${hex[2]}${hex[2]}';
    }

    if (hex.length == 6) {
      hex = 'FF$hex';
    }

    if (hex.length != 8) {
      throw FormatException('Invalid hex color: "$this"');
    }

    return Color(int.parse(hex, radix: 16));
  }
}
