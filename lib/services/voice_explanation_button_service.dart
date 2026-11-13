import 'package:flutter/material.dart';

class VoiceExplanationButtonService extends StatelessWidget {
  final int id;
  final VoidCallback onPressed;

  const VoiceExplanationButtonService({
    super.key,
    required this.id,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon : Icon(
        Icons.volume_up,
        color : Colors.teal
      ),
      iconSize : 20,
      tooltip : 'Listen To Explanation',
      onPressed : onPressed,
    );
  }
}