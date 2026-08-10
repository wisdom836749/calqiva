import 'paragraph_block.dart';

enum MessageTypes {
  warning,
  tips,
  note,
  summary,
}

class MessageBlock {
  final MessageTypes type;
  final String title;
  final ParagraphBlock content;

  const MessageBlock ({
    required this.type,
    required this.title,
    required this.content,
  });
}