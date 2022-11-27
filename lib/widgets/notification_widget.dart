import 'dart:math';

import 'package:demoapp/utils/utils.dart';
import 'package:flutter/material.dart';

import 'expandable_text.dart';

class NotificationWidget extends StatelessWidget {
  NotificationWidget({
    super.key,
    this.isScreen = false,
  });
  final bool isScreen;

  final Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(
          top: 15.0,
          right: isScreen ? 0.0 : 30.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text(
                'NOTIFICATIONS',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              trailing: Transform.scale(
                scale: 0.7,
                child: FloatingActionButton(
                  mini: true,
                  onPressed: () {},
                  backgroundColor: Colors.white,
                  child: const Icon(Icons.menu),
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) => Card(
                  elevation: 0,
                  color: Colors.grey.shade900.withOpacity(0.8),
                  child: ExpandableText(
                    image: notifications[index]['icon'],
                    text: notifications[index]['text'],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
