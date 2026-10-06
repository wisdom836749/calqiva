import 'package:flutter/material.dart';
import '../repositories/topic_repository.dart';
import '../models/topic.dart';
import 'dart:math';
import 'sub_topic_screen.dart';

class TopicScreen extends StatefulWidget{
  const TopicScreen({super.key});

  @override
  State<TopicScreen> createState() => _TopicScreenState();
}

class _TopicScreenState extends State<TopicScreen> {
  late Future<List<Topic>> futureTopics;
  List<Color> colors = [];

  @override
  void initState() {
    super.initState();
    futureTopics = TopicRepository.getAllTopics();
    getItems();
  }

  Future<void> getItems() async{
    final getTopics = await futureTopics;

    Random random = Random();

    final getColors = List.generate(
      getTopics.length,
      (_) => Colors.primaries[random.nextInt(Colors.primaries.length)],
    );

    setState(() {
      colors = getColors;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor : Color(0xFF0D1B2A),

      appBar : AppBar(
        title : const Text(
          "Lesson Topics",
          style : TextStyle(
            fontSize : 25,
            fontWeight : FontWeight.w800,
            color : Colors.black,
          ),
        ),
        backgroundColor : Colors.blueGrey,
      ),

      body : FutureBuilder<List<Topic>> (
        future : futureTopics,

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
                  "Topics not found",
                  style : TextStyle(
                    color : Colors.white,
                  ),
                ),
              ) ,
            );
          }

          final topics = snapshot.data!;

          return GridView.builder(
            itemCount : topics.length,

            padding : const EdgeInsets.all(20),

            gridDelegate : SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount : 2,
              crossAxisSpacing : 20,
              mainAxisSpacing : 20,
              childAspectRatio : 0.9,
            ),

            itemBuilder : (context, index) {
              final topic = topics[index];
              final color = colors[index];

              return InkWell(
                borderRadius : BorderRadius.circular(18),

                onTap : () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder : (_) => SubTopicScreen(
                        topicId : topic.id,
                        topicTitle : topic.title,
                      ),
                    ),
                  );
                },

                child : Card(
                  elevation : 8,
                  
                  shape : RoundedSuperellipseBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),

                  color : color.withValues(alpha: 0.20),

                  child : Padding(
                    padding  : const EdgeInsets.all(15),

                    child : Column(
                      crossAxisAlignment : CrossAxisAlignment.center,

                      mainAxisAlignment : MainAxisAlignment.start,

                      children: [
                        Image.asset(
                          topic.imagePath,
                          width : 100,
                          height : 100,
                        ),

                        Text(
                          topic.title,
                          textAlign : TextAlign.center,
                          style : TextStyle(
                            fontSize : 20,
                            fontWeight : FontWeight.w600,
                            color : color,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}