import 'dart:math';

import 'package:flutter/material.dart';

bool isSmallScreen(BuildContext context) {
  return MediaQuery.of(context).size.width < 800;
}

bool isLargeScreen(BuildContext context) {
  return MediaQuery.of(context).size.width > 1200;
}

bool isMediumScreen(BuildContext context) {
  return MediaQuery.of(context).size.width >= 800 &&
      MediaQuery.of(context).size.width <= 1200;
}

String placeHolder =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam facilisis at nisl eget accumsan. Phasellus sollicitudin dolor quis semper posuere. Nam lobortis ante sit amet vulputate consequat.';

String notText =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.';

List<Map> notifications = [];

void generateNotification() {
  Random random = Random();
  for (int i = 0; i < 10; i++) {
    notifications.add(
        {'text': notText, 'icon': 'assets/noti_${random.nextInt(5) + 1}.png'});
  }
}
