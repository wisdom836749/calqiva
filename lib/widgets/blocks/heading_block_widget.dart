import 'package:flutter/material.dart';
import '../../models/heading_block.dart';

class HeadingBlockWidget extends StatelessWidget {
  final HeadingBlock block;

  const HeadingBlockWidget ({
    super.key,
    required this.block
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.only(top:10, bottom: 20),
      child:Text(
        block.heading,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: Colors.black
        ),
      ),
    );
  }
}