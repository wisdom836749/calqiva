import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import '../models/paragraph_block.dart';
import '../models/text_part.dart';


class ParagraphRendererWidget extends StatelessWidget {
  final ParagraphBlock paragraph;

  const ParagraphRendererWidget({
    super.key,
    required this.paragraph,
  });

  @override
  Widget build(BuildContext context) {
    List<InlineSpan> spans = [];

    for (final part in paragraph.parts) {

      if (part.isImage) {
        spans.add(
          WidgetSpan(
            alignment : PlaceholderAlignment.middle,
            child : Padding(
              padding : EdgeInsets.all(20),
           
              child : Image.asset(
                part.text,
                height : 150,
                width : 150,
                fit : BoxFit.contain,
                errorBuilder : (context, error, stackTrace) {
                  return const Text("[Image unavailable]");
                },
              ),
            ),
          ),
        );
      } else if (part.isMath) {
        spans.add(
          WidgetSpan(
            alignment : PlaceholderAlignment.middle,
            child : _getMath(part),
          ),
        );
      } else {
        spans.add(
          TextSpan(
            text : part.text,
            style : TextStyle(
              fontSize : (part.style['fontSize'] as num).toDouble(),
              fontWeight : _getFontWeight(part.style['fotWeight']),
              color : _getColor(part.style['color']),
            ),
          ),
        );
      }
    }

    return RichText(
      text: TextSpan(
        children : spans,
      ),
    );
  }

  Widget _getMath(TextPart part) {
    final lines = part.text.split('\n');

    return Padding(
      padding: EdgeInsets.symmetric(horizontal : 8),
      child : Column(
        crossAxisAlignment : CrossAxisAlignment.start,
        children : lines.map((line){
          if (line.trim().isEmpty) {
            return const SizedBox(height : 12);
          }

          return Padding(
            padding : EdgeInsets.symmetric(horizontal : 8),

            child : SingleChildScrollView(
              scrollDirection : Axis.horizontal,

              child : Math.tex(
                line.trim(),
                textStyle : TextStyle(
                  fontSize : (part.style['fontSize'] as num).toDouble(),
                  color : _getColor(part.style['color']),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  Color _getColor(dynamic value) {
    switch(value) {
      case 'blue':
        return Colors.blue;
      case 'red':
        return Colors.red;
      case 'amber':
        return Colors.amber;
      case 'black':
        return Colors.black;
      default :
        return Colors.black;
    }
  }

  FontWeight _getFontWeight(dynamic value) {
    switch(value) {
      case 'w400':
        return FontWeight.w400;
      case 'w500':
        return FontWeight.w500;
      case 'w600':
        return FontWeight.w600;
      case 'w700':
        return FontWeight.w700;
      case 'w800':
        return FontWeight.w800;
      case 'w900':
        return FontWeight.w900;
      default:
        return FontWeight.normal;
    }
  }
}
