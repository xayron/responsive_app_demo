import 'package:flutter/material.dart';

class WebNavButton extends StatelessWidget {
  const WebNavButton({
    super.key,
    required this.index,
    required this.padding,
    required this.selected,
    required this.icon,
    this.label,
    required this.onPress,
  });
  final int index;
  final bool padding;
  final bool selected;
  final IconData icon;
  final String? label;
  final Function(int) onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        (index != -1) ? onPress(index) : onPress(-1);
      },
      splashColor: Colors.transparent,
      child: Container(
        width: 60.0,
        height: 80.0,
        decoration: BoxDecoration(
          border: Border(
            right: BorderSide(
              width: 3.0,
              color: selected ? const Color(0xffFFAB49) : Colors.transparent,
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 25.0,
            ),
            const SizedBox(height: 5.0),
            Text(
              label ?? '',
              style: const TextStyle(fontSize: 10.0),
            ),
          ],
        ),
      ),
    );
  }
}
