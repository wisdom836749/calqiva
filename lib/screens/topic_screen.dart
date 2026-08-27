import 'package:flutter/material.dart';
import '../data/math_lesson.dart';
import 'dart:math';
import 'sub_topic_screen.dart';

class TopicScreen extends StatelessWidget{
  const TopicScreen ({
    super.key
  });

  static Random random = Random();

  static List<Color> randomColor = List.generate(
    mathsLesson.length,
    (index) {
      return Colors.primaries[random.nextInt(Colors.primaries.length)];
    }
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Color(0xFF0D1B2A),

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          "Maths Lesson",
          style: TextStyle(
            fontSize: 24,
            fontWeight:FontWeight.w800,
            color: Colors.grey,
          ),
        ),
      ),

      body: GridView.builder(
        itemCount: mathsLesson.length,

        padding: EdgeInsets.all(15),

        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          childAspectRatio: 0.9,
        ),

        itemBuilder: (context, index) {
          final color = randomColor[index];
          final topic = mathsLesson[index];

          return InkWell(
            borderRadius: BorderRadius.circular(20),

            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => SubTopicScreen(
                    topic: topic,
                  ),
                ),
              );
            },

            child: Card(
              elevation: 8,

              color: color.withValues(alpha: 0.15),

              shape: RoundedSuperellipseBorder(
                borderRadius: BorderRadius.circular(20),
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  Image.asset(
                    topic.image,
                    height: 80,
                    width: 70,
                  ),

                  SizedBox(height: 10),

                  Text(
                    topic.title,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: color,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}