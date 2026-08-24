import 'package:flutter/material.dart';
import '../../../models/paragraph_block.dart';
import '../custom_part_widget.dart';
class ParagraphBlockWidget extends StatelessWidget {
  final ParagraphBlock block;

  const ParagraphBlockWidget ({
    super.key,
    required this.block,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: CustomPartWidget(
        parts: block.parts,
      ),
    );
  }
}