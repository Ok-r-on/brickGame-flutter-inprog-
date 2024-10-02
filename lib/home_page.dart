import 'dart:async';

import 'package:brick_breaker_game/ball.dart';
import 'package:brick_breaker_game/coverscreen.dart';
import 'package:brick_breaker_game/player.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //ball initial coordinates
  double ballX = 0;
  double ballY = 0;

  //player initial coordinates
  double PlayerX=0;
  double PlayerWidth=0.3;//out of 2 on y axis

  //to know if game has started
  bool hasGameStarted = false;

  void startGame() {
    hasGameStarted = true;
    Timer.periodic(Duration(milliseconds: 10), (timer) {
      setState(() {
        ballY -= 0.01;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return R(
      child: GestureDetector(
        onTap: startGame,
        child: Scaffold(
          body: Center(
            child: Stack(
              children: [
                //its better to just create the class as it looks more decent and readable
      
                //tap to play display
                Coverscreen(hasGameStarted: hasGameStarted),
      
                //ball
                MyBall(ballX: ballX, ballY: ballY),
      
                //player
                MyPlayer(
                  PlayerX: PlayerX,
                  PlayerWidth: PlayerWidth,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
