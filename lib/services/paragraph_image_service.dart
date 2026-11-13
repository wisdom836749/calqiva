import '../models/paragraph_block.dart';

class ParagraphImageService {
  static List<String> convert(ParagraphBlock paragraph) {
    final parts = [...paragraph.parts];

    parts.sort(
      (a, b) => a.position.compareTo(b.position),
    );

    final imageParts = parts.where((part) => part.isImage);

    return imageParts.map((part) => part.text).toList();
  }
}