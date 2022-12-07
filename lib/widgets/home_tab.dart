import 'package:demoapp/screens/notification_screen.dart';
import 'package:demoapp/widgets/small_screen_widget.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (settings) {
        Widget page = SmallScreenWidget(size: widget.size);
        if (settings.name == 'page2') page = const NotificationScreen();
        return MaterialPageRoute(builder: (_) => page);
      },
    );
  }
}
