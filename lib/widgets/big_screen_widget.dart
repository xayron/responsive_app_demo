import 'package:flutter/material.dart';

import 'big_screen_score_widget.dart';
import 'logo_widget.dart';
import 'notification_widget.dart';
import 'web_nav_button.dart';

class BigScreenWidget extends StatefulWidget {
  const BigScreenWidget({super.key, required this.size});
  final Size size;

  @override
  State<BigScreenWidget> createState() => _BigScreenWidgetState();
}

class _BigScreenWidgetState extends State<BigScreenWidget> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Column(
          children: [
            const LogoWidget(),
            const SizedBox(height: 20.0),
            WebNavButton(
              index: 0,
              padding: true,
              selected: index == 0,
              icon: Icons.home,
              label: 'Home',
              onPress: (value) {
                setState(() {
                  index = value;
                });
              },
            ),
            WebNavButton(
              index: 1,
              padding: true,
              selected: index == 1,
              icon: Icons.settings,
              label: 'Settings',
              onPress: (value) {
                setState(() {
                  index = value;
                });
              },
            ),
            const Spacer(),
            WebNavButton(
              index: -1,
              padding: true,
              selected: false,
              icon: Icons.logout,
              label: '',
              onPress: (value) {},
            ),
          ],
        ),
        const VerticalDivider(thickness: 1, width: 2),
        Expanded(
          child: Container(
            width: widget.size.width,
            height: widget.size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/web_background.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Row(
              children: [
                BigScreenScoreWidget(size: widget.size),
                NotificationWidget(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
