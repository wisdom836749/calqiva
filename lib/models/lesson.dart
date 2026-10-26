import 'heading_block.dart';
import 'paragraph_block.dart';
import 'example_block.dart';
import 'message_block.dart';

enum LessonType {
  heading,
  paragraph,
  example,
  tip,
  summary,
  note,
  warning,
}

class Lesson {
  final int id;
  final int subTopicId;
  final LessonType blockType;
  final int position;
  HeadingBlock? heading;
  ParagraphBlock? paragraph;
  ExampleBlock? example;
  MessageBlock? message;

  Lesson({
    required this.id,
    required this.subTopicId,
    required this.blockType,
    required this.position,
    this.heading,
    this.paragraph,
    this.example,
    this.message,
  });

  factory Lesson.fromMap(Map<String, dynamic> map) {
    return Lesson(
      id : map['id'] as int,
      subTopicId : map['sub_topic_id'] as int,
      blockType : LessonType.values.firstWhere((value) {
        return value.name == map['block_type'];
        },
        orElse : () {
          throw FormatException('unknown lesson block type: ${map['block_type']}');
        },
      ),
      position : map['position'] as int,
    );
  }
}