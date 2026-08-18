import 'package:flutter/material.dart';
import 'package:flutter_sdui_challenge/features/dynamic_form/domain/entities/field_style_entity.dart';

class FieldStyleParser {
  const FieldStyleParser._();

  static EdgeInsets margin(FieldStyleEntity style) =>
      _edgeInsetsFrom(style.margin);

  static EdgeInsets padding(FieldStyleEntity style) =>
      _edgeInsetsFrom(style.padding, fallback: const EdgeInsets.all(0));

  static BorderRadius borderRadius(FieldStyleEntity style) {
    final raw = style.borderRadius;
    if (raw == null) return BorderRadius.circular(8);
    final value = double.tryParse(raw.replaceAll('px', '').trim());
    return BorderRadius.circular(value ?? 8);
  }

  static Color? color(String? raw) {
    if (raw == null) return null;
    var hex = raw.replaceAll('#', '');
    if (hex.length == 6) hex = 'FF$hex';
    final parsed = int.tryParse(hex, radix: 16);
    return parsed == null ? null : Color(parsed);
  }

  static EdgeInsets _edgeInsetsFrom(
    String? raw, {
    EdgeInsets fallback = EdgeInsets.zero,
  }) {
    if (raw == null || raw.isEmpty) return fallback;
    final parts = raw.split(RegExp(r'\s+')).map((p) {
      return double.tryParse(p.replaceAll('px', '').trim()) ?? 0;
    }).toList();

    if (parts.length == 1) return EdgeInsets.all(parts[0]);
    if (parts.length >= 2) {
      return EdgeInsets.symmetric(vertical: parts[0], horizontal: parts[1]);
    }
    return fallback;
  }
}
