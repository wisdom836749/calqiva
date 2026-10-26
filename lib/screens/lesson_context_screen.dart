import 'package:flutter/material.dart';
import '../models/sub_topic.dart';
import '../models/lesson.dart';
import '../widgets/paragraph_renderer_widget.dart';
import '../models/message_block.dart';

class LessonContextScreen extends StatelessWidget {
  final SubTopic subTopic;
  final String topicTitle;

  const LessonContextScreen({
    super.key,
    required this.topicTitle,
    required this.subTopic,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title : Text(
          "$topicTitle > ${subTopic.subTitle}",
          style : TextStyle(
            color : Colors.black,
            fontSize : 22,
            fontWeight : FontWeight.w800,
          ),
        ),
        backgroundColor : Colors.blueGrey,
      ),

      body : Stack(
        children : [
          Positioned.fill(
            child : Opacity(
              opacity: 0.2 ,
              child : Image.asset(
                'assets/images/calqiva_watermark.png',
                fit : BoxFit.cover,
              ),
            ),
          ),

          ListView.builder(
            padding : EdgeInsets.symmetric(horizontal : 16),

            itemCount : subTopic.blocks!.length,

            itemBuilder : (context, index) {
              final block = subTopic.blocks![index];

              switch(block.blockType) {
                case LessonType.heading:
                  return _buildHeading(block);

                case LessonType.paragraph:
                  final paragraph = block.paragraph;
                  if (paragraph == null) {
                    return const SizedBox.shrink();
                  }

                  return Padding(
                    padding : EdgeInsets.only(bottom: 12),

                    child : ParagraphRendererWidget(
                      paragraph : paragraph,
                    ),
                  );

                case LessonType.example:
                  return _buildExample(block);

                case LessonType.tip:
                case LessonType.note:
                case LessonType.summary:
                case LessonType.warning:
                  return _buildMessage(block);
              }
            },
          ),
        ],
      ),
    );
  }

  Widget _buildHeading(Lesson block) {
    final heading = block.heading;

    if (heading == null) {
      return const SizedBox.shrink();
    }

    return Padding(
      padding : EdgeInsets.only(bottom : 16),
      child : Text(
        heading.heading,
        style : TextStyle(
          color : Colors.black,
          fontWeight : FontWeight.w600,
          fontSize : 18,
        ),
      ),
    );
  }

  Widget _buildExample(Lesson block) {
    final example = block.example;

    if (example == null) {
      return const SizedBox.shrink();
    }

    return Padding(
      padding : EdgeInsets.only(bottom : 12),
      child : Column(
        crossAxisAlignment : CrossAxisAlignment.start,
        children : [
          Text(
            example.title,
            style : TextStyle(
              color : Colors.brown,
              fontWeight : FontWeight.w600,
              fontSize : 16,
            ),
          ),
          
          if (example.question != null) ...[
            const SizedBox(height : 8),

            Text(           
              "Question",
              style : TextStyle(
                color : Colors.indigo,
                fontSize : 16,
              ),
            ),

            ParagraphRendererWidget(
              paragraph : example.question!,
            ),
          ],

          if (example.question != null) ...[
            const SizedBox(height : 8),

            Text(
              "Solution",
              style : TextStyle(
                color : Colors.indigo,
                fontSize : 16,
              ),
            ),

            ParagraphRendererWidget(
              paragraph : example.solution!
            ),
          ],

          if (example.answer != null) ...[
            const SizedBox(height : 8),

            Text(
              "Answer",
              style : TextStyle(
                color : Colors.indigo,
                fontSize :16,
              ),
            ),

            ParagraphRendererWidget(
              paragraph : example.answer!,
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildMessage(Lesson block) {
    final message = block.message;

    if (message == null) {
      return const SizedBox.shrink();
    }

    final isSummary = message.type == MessageType.summary;
    final isTip = message.type == MessageType.tip;
    final isWarning = message.type == MessageType.warning;

    Color color = isSummary ? Colors.purple : isTip ? Colors.deepOrange : isWarning ? Colors.orange : Colors.red;

    IconData icon = isSummary ? Icons.summarize : isTip ? Icons.lightbulb_outline : isWarning ? Icons.warning_amber : Icons.info_outline;

    String title = isSummary ? "Summary" : isTip ? "Tip" : isWarning ? "Warning" : "Note";

    return Padding(
      padding : EdgeInsets.only(bottom : 12),
      
      child : Card(
        elevation : 8,

        color : color.withValues(alpha : 0.4),

        child : Padding(
          padding : EdgeInsets.all(15),
          child : Column(
            crossAxisAlignment : CrossAxisAlignment.start,
            children : [
              Row(
                mainAxisAlignment : MainAxisAlignment.start,
                children : [
                  Icon(
                    icon,
                    size : 20,
                  ),

                  Text(
                    title,
                    style : TextStyle(
                      color : color,
                      fontWeight : FontWeight.w500,
                      fontSize : 16
                    ),
                  ),
                ],
              ),

              if (message.context != null) ...[
                const SizedBox(height : 10),

                ParagraphRendererWidget(
                  paragraph : message.context!
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}