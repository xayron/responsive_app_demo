import 'package:demoapp/screens/homepage/notification_cubit/notification_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExpandableText extends StatefulWidget {
  final int index;
  final String image;
  final String text;
  const ExpandableText({
    Key? key,
    required this.index,
    required this.image,
    required this.text,
  }) : super(key: key);

  @override
  ExpandableTextState createState() => ExpandableTextState();
}

class ExpandableTextState extends State<ExpandableText>
    with TickerProviderStateMixin<ExpandableText> {
  bool isExpanded = false;
  late int numLines;

  @override
  void initState() {
    numLines = '\n'.allMatches(widget.text).length + 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () =>
          context.read<NotificationCubit>().showNotification(widget.index),
      minLeadingWidth: 0.0,
      leading: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade800),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Image.asset(
          widget.image,
          height: 40.0,
          width: 40.0,
          fit: BoxFit.cover,
        ),
      ),
      title: AnimatedSize(
        duration: const Duration(milliseconds: 200),
        child: Text(
          widget.text,
          maxLines: isExpanded ? 20 : 2,
          softWrap: true,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 15.0,
          ),
        ),
      ),
      contentPadding: const EdgeInsets.all(10.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
      ),
      trailing: TextButton(
        style: ButtonStyle(
          foregroundColor:
              MaterialStateColor.resolveWith((states) => Colors.white),
        ),
        child: const Text('Read more'),
        onPressed: () => setState(() => isExpanded = !isExpanded),
      ),
    );
  }
}
