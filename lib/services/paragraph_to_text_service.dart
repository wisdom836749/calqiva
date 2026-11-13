import '../models/paragraph_block.dart';

class ParagraphToTextService {
  static String convert(ParagraphBlock paragraph) {
    final parts = [...paragraph.parts];

    parts.sort(
      (a, b) => a.position.compareTo(b.position),
    );

    final textParts = parts.where((part) => !part.isImage);

    return textParts.map((part) => part.text).join();
  }
}