import 'package:flutter/material.dart';
import '../models/sub_topic.dart';
import '../widgets/lesson_renderer_widget.dart';

class LessonScreen extends StatelessWidget {
  final String topic;
  final SubTopic subTopic;

  const LessonScreen ({
    super.key,
    required this.topic,
    required this.subTopic,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0D1B2A),
        title: Text(
          "$topic > ${subTopic.title}",
          style: TextStyle(
            fontSize: 24,
            fontWeight:FontWeight.w800,
            color: Colors.grey,
          ),
        ),
      ),

      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child:Opacity(
                opacity: 0.1,
                child: Image.asset(
                  "assets/images/calqiva_watermark.png",
                  fit: BoxFit.contain,
                ),
              ),
            ),

            SingleChildScrollView(
              child: LessonRendererWidget(
                lesson: subTopic.lesson,
              ),
            ),
          ],
        ),
      ),
    );
  }
}