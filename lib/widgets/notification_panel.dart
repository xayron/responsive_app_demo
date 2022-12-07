import 'package:demoapp/screens/homepage/notification_cubit/notification_cubit.dart';
import 'package:demoapp/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationPanel extends StatelessWidget {
  const NotificationPanel({
    super.key,
    required this.data,
  });

  final Map data;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Wrap(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Container(
              width: isSmallScreen(context) ? 300.0 : 500.0,
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${data['title'][0].toUpperCase()}${data['title'].substring(1)}',
                    style: const TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Text(
                    '${data['body'][0].toUpperCase()}${data['body'].substring(1)}',
                    style: const TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  TextButton(
                    onPressed: () =>
                        context.read<NotificationCubit>().closeNotification(),
                    child: const Text('Close'),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
