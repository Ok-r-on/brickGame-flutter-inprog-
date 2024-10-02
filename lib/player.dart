import 'package:flutter/material.dart';

class MyPlayer extends StatelessWidget {
  const MyPlayer({super.key, required this.PlayerX, required this.PlayerWidth});

  final PlayerX;
  final PlayerWidth;//out of 2 [from -1 to 1]

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(PlayerX, 0.9),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          height: 10,
          width: MediaQuery.of(context).size.width * PlayerWidth / 2,
          color: Colors.deepPurple,
        ),
      ),
    );
  }
}