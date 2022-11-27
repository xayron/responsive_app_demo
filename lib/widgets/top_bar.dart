import 'package:demoapp/screens/notification_screen.dart';
import 'package:demoapp/widgets/logo_widget.dart';
import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key, required this.size});
  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.15,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const LogoWidget(),
            InkWell(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const NotificationScreen(),
                ),
              ),
              child: const CircleAvatar(
                radius: 15.0,
                backgroundColor: Colors.black38,
                child: Icon(
                  Icons.notifications,
                  size: 20.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
