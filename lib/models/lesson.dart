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

  const Lesson({
    required this.id,
    required this.subTopicId,
    required this.blockType,
    required this.position,
  });

  factory Lesson.fromMap(Map<String, dynamic> map) {
    return Lesson(
      id : map['id'] as int,
      subTopicId : map['sub_topic_id'] as int,
      blockType : LessonType.values.firstWhere((value) {
        return value.name == map['block_type'];
      }),
      position : map['position'] as int,
    );
  }
}