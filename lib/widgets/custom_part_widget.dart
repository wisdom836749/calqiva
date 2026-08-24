import 'package:flutter/material.dart';
import '../models/text_part.dart';
import 'package:flutter_math_fork/flutter_math.dart';

class CustomPartWidget extends StatelessWidget {
  final List<TextPart> parts;

  const CustomPartWidget ({
    super.key,
    required this.parts,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: List.generate(
        parts.length,
        (index) {
          final part = parts[index];

          if (part.isMath) {
            return Math.tex(
              part.text,
              textStyle: part.style
            );
          }

          return Text(
            part.text,
            style: part.style
          );
        }
      )
    );
  }
}