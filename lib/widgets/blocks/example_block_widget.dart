import 'package:flutter/material.dart';
import '../../models/example_block.dart';
import '../custom_part_widget.dart';

class ExampleBlockWidget extends StatelessWidget {
  final ExampleBlock block;

  const ExampleBlockWidget ({
    super.key,
    required this.block,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text(
          block.title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black
          ),
        ),

        const SizedBox(height: 20),

        Text(
          "Question",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),

        const SizedBox(height: 10),

        CustomPartWidget(
          parts: block.question.parts
        ),

        const SizedBox(height:20),

        Text(
          "Solution",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black
          ),
        ),

        const SizedBox(height: 10),

        ... block.solution.map((block) {
          return Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: CustomPartWidget(
              parts: block.parts,
            ),
          );
        }),

        const SizedBox(height: 20),

        Text(
          "Answer",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black
          ),
        ),

        const SizedBox(height: 10),

        CustomPartWidget(
          parts:block.answer.parts
        ),
      ],
    );
  } 
}