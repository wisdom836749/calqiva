import 'sub_topic.dart';

class Topic {
  final String title;
  final List<SubTopic> subTopics;
   final String image;

  const Topic ({
    required this.title,
    required this.subTopics,
    required this.image,
  });
}