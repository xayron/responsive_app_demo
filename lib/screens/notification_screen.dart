import 'package:demoapp/screens/homepage/notification_cubit/notification_cubit.dart';
import 'package:demoapp/widgets/notification_panel.dart';
import 'package:demoapp/widgets/notification_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(
          10.0,
          0.0,
          10.0,
          10.0,
        ),
        child: BlocBuilder<NotificationCubit, NotificationState>(
          builder: (context, state) {
            if (state is NotificationInitial || state is NotificationClosed) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  NotificationWidget(isScreen: true),
                ],
              );
            } else if (state is NotificationOpening) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is NotificationOpened) {
              Map data = state.props.first as Map;
              return NotificationPanel(data: data);
            }
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
