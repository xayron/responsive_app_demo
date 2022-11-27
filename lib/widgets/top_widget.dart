import 'package:demoapp/widgets/score_widget.dart';
import 'package:demoapp/widgets/top_bar.dart';
import 'package:flutter/material.dart';

import 'score_list.dart';

class SmallScreenWidget extends StatelessWidget {
  const SmallScreenWidget({super.key, required this.size});
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ShaderMask(
          shaderCallback: (rect) {
            return const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.black, Colors.transparent],
            ).createShader(Rect.fromLTRB(
              0,
              0,
              rect.width,
              rect.height * 1.4,
            ));
          },
          blendMode: BlendMode.dstIn,
          child: Image.asset(
            'assets/background.png',
            width: size.width,
            height: size.height * 0.4,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10.0,
            horizontal: 15.0,
          ),
          child: ListView(
            children: [
              TopBar(size: size),
              ScoreWidget(size: size),
              const ScoreList(),
            ],
          ),
        )
      ],
    );
  }
}
