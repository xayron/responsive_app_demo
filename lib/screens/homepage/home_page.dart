import 'package:demoapp/screens/settings_page.dart';
import 'package:demoapp/utils/utils.dart';
import 'package:demoapp/widgets/big_screen_widget.dart';
import 'package:demoapp/widgets/home_tab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;

  PageController pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: isSmallScreen(context)
            ? PageView(
                controller: pageController,
                children: [
                  HomeTab(size: size),
                  const SettingsPage(),
                ],
              )
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
                    pageController.jumpToPage(value);
                  });
                },
              )
            : const SizedBox.shrink(),
      ),
    );
  }
}
