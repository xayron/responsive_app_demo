import 'package:flutter/material.dart';

class ScoreList extends StatelessWidget {
  const ScoreList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 10,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 5.0,
          horizontal: 10.0,
        ),
        child: ListTile(
          minLeadingWidth: 0.0,
          leading: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade800),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Image.asset(
              'assets/icon.png',
              height: 20.0,
              width: 20.0,
            ),
          ),
          contentPadding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 50.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          tileColor: Colors.grey.shade900,
          title: const Text('Lorem ipsum dolor'),
          trailing: const Text('5.0'),
        ),
      ),
    );
  }
}
