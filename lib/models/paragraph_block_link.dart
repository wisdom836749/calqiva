class ParagraphBlockLink {
  final int blockId;
  final int paragraphId;

  const ParagraphBlockLink({
    required this.blockId,
    required this.paragraphId,
  });

  factory ParagraphBlockLink.fromMap(Map<String, dynamic> map) {
    return ParagraphBlockLink(
      blockId : map['block_id'] as int,
      paragraphId : map['paragraph_id'] as int,
    );
  } 
}