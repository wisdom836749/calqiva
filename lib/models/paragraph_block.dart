import 'text_part.dart';

class ParagraphBlock {
  final int id;
  final List<TextPart> parts;

  const ParagraphBlock({
    required this.id,
    required this.parts,
  });
}