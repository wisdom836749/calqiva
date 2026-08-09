import 'package:flutter/material.dart';

class TextPart {
  final String text;
  final TextStyle style;
  final bool isMath;

  const TextPart ({
    required this.text,
    this.style = const TextStyle(fontSize: 18, color: Colors.black),
    this.isMath = false,
  });
}