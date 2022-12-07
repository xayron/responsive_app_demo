import 'package:demoapp/widgets/home_panel.dart';
import 'package:flutter/material.dart';
import 'logo_widget.dart';
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
          child: [
            HomePanel(size: widget.size),
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'Settings Screen',
                  style: TextStyle(fontSize: 25.0),
                ),
              ),
            )
          ][index],
        ),
      ],
    );
  }
}
