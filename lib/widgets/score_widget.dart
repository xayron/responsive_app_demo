import 'package:demoapp/utils/utils.dart';
import 'package:flutter/material.dart';

class ScoreWidget extends StatelessWidget {
  const ScoreWidget({
    super.key,
    required this.size,
  });
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Container(
            width: 5.0,
            height: 190.0,
            decoration: BoxDecoration(
              color: const Color(0xffFFAB49),
              borderRadius: BorderRadius.circular(50.0),
            ),
          ),
          const SizedBox(width: 20.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 80.0,
                  child: ListView.separated(
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 10.0,
                      ),
                      child: RichText(
                        textAlign: TextAlign.left,
                        text: TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          children: const <TextSpan>[
                            TextSpan(
                              text: '14,522\n\n',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0,
                              ),
                            ),
                            TextSpan(
                              text: 'SCORE',
                              style: TextStyle(fontSize: 15.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 50.0,
                      child: VerticalDivider(
                        color: Colors.white,
                        thickness: 1,
                      ),
                    ),
                    itemCount: isSmallScreen(context) ? 3 : 4,
                  ),
                ),
                const SizedBox(height: 20.0),
                Text(
                  placeHolder,
                  style: const TextStyle(
                    fontSize: 16.0,
                    wordSpacing: 1.5,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
