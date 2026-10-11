class HeadingBlock {
  final int blockId;
  final String heading;

  const HeadingBlock({
    required this.blockId,
    required this.heading,
  });

  factory HeadingBlock.fromMap(Map<String, dynamic> map) {
    return HeadingBlock(
      blockId : map['block_id'] as int,
      heading : map['heading'] as String,
    );
  }
}