enum MessageType {
  warning,
  note,
  summary,
  tip,
}

class MessageBlock {
  final int blockId;
  final MessageType type;
  final String title;
  final int paragraphContext;

  const MessageBlock({
    required this.blockId,
    required this.type,
    required this.title,
    required this.paragraphContext
  });

  factory MessageBlock.fromMap(Map<String, dynamic> map) {
    return MessageBlock(
      blockId : map['block_id'] as int,
      type : MessageType.values.firstWhere((value) => value.name == map['type']),
      title : map['title'] as String,
      paragraphContext : map['paragraph_context'] as int,
    );
  }
}