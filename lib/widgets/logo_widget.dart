import 'package:demoapp/utils/utils.dart';
import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final double size = isSmallScreen(context) ? 50.0 : 60.0;
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0),
        image: const DecorationImage(
          image: AssetImage('assets/logo.png'),
        ),
      ),
    );
  }
}
