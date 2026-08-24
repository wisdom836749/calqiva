import 'package:flutter/material.dart';
import '../../models/message_block.dart';
import '../custom_part_widget.dart';

class MessageBlockWidget extends StatelessWidget {
  final MessageBlock block;

  const MessageBlockWidget({
    super.key,
    required this.block
  });

  IconData get icon {
    switch (block.type) {
      case MessageTypes.note:
        return Icons.library_books;

      case MessageTypes.summary:
        return Icons.summarize;

      case MessageTypes.tips:
        return Icons.lightbulb;

      case MessageTypes.warning:
        return Icons.warning;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding (
      padding: EdgeInsets.only(top: 20),

      child:Column(
        children: [
          Row(
            children:[
              Icon(
                icon,
                size: 30
              ),

              const SizedBox(width: 10),

              Text(
                block.title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600
                ),
              ),
            ],
          ),

          const SizedBox(height: 10),

          CustomPartWidget(
            parts: block.content.parts
          ),
        ],
      ),
    );
  }
}