import 'package:flutter/material.dart';

import 'score_list.dart';
import 'score_widget.dart';

class BigScreenScoreWidget extends StatelessWidget {
  const BigScreenScoreWidget({super.key, required this.size});
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 25.0,
          right: 20.0,
          left: 20.0,
        ),
        child: Column(
          children: [
            const ListTile(
              title: Text(
                'HOME > DETAILS',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12.0,
                ),
              ),
            ),
            Expanded(
              child: Card(
                elevation: 0.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                color: Colors.grey.shade900.withOpacity(0.7),
                child: ListView(
                  padding: const EdgeInsets.all(15.0),
                  shrinkWrap: true,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 10.0,
                      ),
                      child: Text(
                        'TITLE',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ScoreWidget(size: size),
                    const ScoreList(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
