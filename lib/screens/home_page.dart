import 'package:demoapp/utils/utils.dart';
import 'package:demoapp/widgets/big_screen_widget.dart';
import 'package:demoapp/widgets/top_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: isSmallScreen(context)
            ? SmallScreenWidget(size: size)
            : BigScreenWidget(size: size),
        bottomNavigationBar: isSmallScreen(context)
            ? BottomNavigationBar(
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    label: 'Settings',
                  ),
                ],
                currentIndex: index,
                selectedItemColor: Colors.amber[800],
                onTap: (value) {
                  setState(() {
                    index = value;
                  });
                },
              )
            : const SizedBox.shrink(),
      ),
    );
  }
}
