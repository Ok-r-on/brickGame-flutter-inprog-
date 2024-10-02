import 'package:flutter/material.dart';

class Coverscreen extends StatelessWidget {
  const Coverscreen({super.key, required this.hasGameStarted});

  final bool hasGameStarted;

  @override
  Widget build(BuildContext context) {
    return hasGameStarted
      ? Container()
      : Container(
        alignment: Alignment(0, -0.2),
        child: Text(
          "TAP TO PLAY",
          style: TextStyle(color: Colors.deepPurple, fontSize: 24),
        ),
      );
  }
}
