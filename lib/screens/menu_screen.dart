import 'package:flutter/material.dart';
import 'topic_screen.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor : Color(0xFF0D1B2A),

      appBar : AppBar(
        title : const Text(
          "Calqiva",
          style : TextStyle(
            fontSize : 25,
            fontWeight  : FontWeight.w800,
            color : Colors.black,
          ),
        ),

        backgroundColor : Colors.blueGrey,
      ),

      body : Padding(
        padding : EdgeInsets.all(20),

        child : Column(
          children : [
            Expanded(
              child : InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder : (_) => TopicScreen(),
                    ),
                  );
                },

                child : Card(
                  color : Colors.transparent,

                  child : Center(
                    child : Text(
                      "Lesson",
                      style : TextStyle(
                        fontWeight : FontWeight.w900,
                        fontSize : 28,
                        color : Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            const Divider(),

            Expanded(
              child : InkWell(
                onTap : () {},

                child : Card(
                  color : Colors.transparent,

                  child : Center(
                    child : Text(
                      "Quiz",
                      style : TextStyle(
                        fontSize : 28,
                        fontWeight : FontWeight.w900,
                        color : Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            const Divider(),

            Expanded(
              child : InkWell(
                onTap : () {},

                child : Card(
                  color : Colors.transparent,

                  child : Center(
                    child : Text(
                      "Question Scanning",
                      style : TextStyle(
                        fontSize : 28,
                        fontWeight : FontWeight.w900,
                        color : Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}