import 'dart:convert';

class TextPart {
  final int id;
  final int paragraphId;
  final String text;
  final bool isMath;
  final bool isImage;
  final Map<String, dynamic> style;
  final int position;

  const TextPart({
    required this.id,
    required this.paragraphId,
    required this.text,
    required this.isMath,
    required this.isImage,
    this.style = defaultStyle,
    required this.position,
  });

  static const Map<String, dynamic> defaultStyle = {
    'fontSize' : 16,
    'color' : 'black',
  };

  factory TextPart.fromMap(Map<String, dynamic> map) {
    return TextPart(
      id : map['id'] as int,
      paragraphId : map['paragraph_id'] as int,
      text : map['text'] as String,
      isMath : map['is_math'] == 1,
      isImage : map['is_image'] == 1,
      style : map['style'] == null ? defaultStyle : jsonDecode(map['style']),
      position : map['position'] as int,
    );
  }
}