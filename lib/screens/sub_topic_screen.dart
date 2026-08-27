import 'package:flutter/material.dart';
import '../models/topic.dart';
import 'lesson_screen.dart';

class SubTopicScreen extends StatelessWidget{
  final Topic topic;

  const SubTopicScreen ({
    super.key,
    required this.topic
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0D1B2A),

      appBar:AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          topic.title,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 24,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),

      body: ListView.builder(
        itemCount: topic.subTopics.length,

        itemBuilder: (context, index) {
          final subTopic = topic.subTopics[index];

          return Card(
            elevation: 8,

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),

            child: ListTile(
              title: Text(
                subTopic.title,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),

              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => LessonScreen(
                      topic: topic.title,
                      subTopic: subTopic,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}