class SubTopic {
  final int id;
  final int topicId;
  final String subTitle;

  const SubTopic({
    required this.id,
    required this.topicId,
    required this.subTitle,
  });

  factory SubTopic.fromMap(Map<String, dynamic> map) {
    return SubTopic(
      id : map['id'] as int,
      topicId : map['topic_id'] as int,
      subTitle : map['sub_title'] as String,
    );
  }
}