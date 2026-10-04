import 'package:flutter/material.dart';
import '../repositories/sub_topic_repository.dart';
import '../models/sub_topic.dart';

class SubTopicScreen extends StatefulWidget {
  final int topicId;
  final String topicTitle;

  const SubTopicScreen({
    super.key,
    required this.topicId,
    required this.topicTitle,
  });

  @override
  State<SubTopicScreen> createState() => _SubTopicScreenState();
}

class _SubTopicScreenState extends State<SubTopicScreen> {
  late Future<List<SubTopic>> futureSubTopics;

  @override
  void initState() {
    super.initState();
    futureSubTopics = SubTopicRepository.getByTopicId(widget.topicId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor : Color(0xFF0D1B2A),

      appBar : AppBar(
        title : Text(
          widget.topicTitle,
          style : TextStyle(
            fontSize : 25,
            fontWeight : FontWeight.w800,
            color : Colors.purpleAccent,
          ),
        ),
        backgroundColor : Colors.transparent,
      ),

      body : FutureBuilder<List<SubTopic>>(
        future : futureSubTopics,

        builder : (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child : CircularProgressIndicator(),
            );
          }

          if (snapshot.hasError) {
            return Center(
              child : Card(
                color : Colors.black,
                child : Text(
                  "Error: ${snapshot.error}",
                  style : TextStyle(
                    color : Colors.white,
                  ),
                ),
              ),
            );
          }

          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(
              child : Card(
                color : Colors.black,
                child : Text(
                  "${widget.topicTitle} sub_topics not found",
                  style : TextStyle(
                    color : Colors.white,
                  ),
                ),
              ),
            );
          } 

          final subTopics = snapshot.data!;

          return ListView.builder(
            itemCount : subTopics.length,

            padding : const EdgeInsets.all(20),

            itemBuilder : (context, index) {
              final subTopic = subTopics[index];

              return Card(
                shape : RoundedRectangleBorder(
                  borderRadius : BorderRadius.circular(18),
                ),

                child : ListTile(
                  title : Text(
                    subTopic.subTitle,
                    style : TextStyle(
                      fontSize : 20,
                    ),
                  ),

                  onTap : () {}
                ),
              );
            },
          );
        },
      ),
    );
  }
}