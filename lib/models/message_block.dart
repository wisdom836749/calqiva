import 'paragraph_block.dart';

enum MessageType {
  warning,
  note,
  summary,
  tip,
}

class MessageBlock {
  final int blockId;
  final MessageType type;
  final int paragraphContext;
  ParagraphBlock? context;

  MessageBlock({
    required this.blockId,
    required this.type,
    required this.paragraphContext,
    this.context,
  });

  factory MessageBlock.fromMap(Map<String, dynamic> map) {
    return MessageBlock(
      blockId : map['block_id'] as int,
      type : MessageType.values.firstWhere((value) => value.name == map['type']),
      paragraphContext : map['paragraph_context'] as int,
    );
  }
}