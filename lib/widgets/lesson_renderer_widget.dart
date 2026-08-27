import 'package:flutter/material.dart';

import '../models/example_block.dart';
import '../models/heading_block.dart';
import '../models/lesson_block.dart';
import '../models/message_block.dart';
import '../models/paragraph_block.dart';

import '../widgets/blocks/example_block_widget.dart';
import '../widgets/blocks/heading_block_widget.dart';
import '../widgets/blocks/message_block_widget.dart';
import '../widgets/blocks/paragraph_block_widget.dart';

import '../models/lesson.dart';

class LessonRendererWidget extends StatelessWidget {
  final Lesson lesson;

  const LessonRendererWidget ({
    super.key,
    required this.lesson,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: lesson.blocks.map((block){
        switch(block.type) {
          case LessonBlockTypes.heading:
            return HeadingBlockWidget(
              block: block.data as HeadingBlock,
            );

          case LessonBlockTypes.paragraph:
            return  ParagraphBlockWidget(
              block: block.data as ParagraphBlock,
            );

          case LessonBlockTypes.example:
            return ExampleBlockWidget(
              block: block.data as ExampleBlock,
            );

          case LessonBlockTypes.note:
          case LessonBlockTypes.summary:
          case LessonBlockTypes.tips:
          case LessonBlockTypes.warning:
            return MessageBlockWidget(
              block: block.data as MessageBlock,
            );
        }
      }).toList(),
    );
  }
}