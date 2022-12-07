import 'package:demoapp/screens/homepage/notification_cubit/notification_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'big_screen_score_widget.dart';
import 'notification_panel.dart';
import 'notification_widget.dart';

class HomePanel extends StatelessWidget {
  const HomePanel({
    super.key,
    required this.size,
  });
  final Size size;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotificationCubit, NotificationState>(
      builder: (context, state) {
        if (state is NotificationInitial || state is NotificationClosed) {
          return Container(
            width: size.width,
            height: size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/web_background.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Row(
              children: [
                BigScreenScoreWidget(size: size),
                NotificationWidget(),
              ],
            ),
          );
        } else if (state is NotificationOpening) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is NotificationOpened) {
          Map data = state.props.first as Map;
          return NotificationPanel(data: data);
        }
        return const SizedBox.shrink();
      },
    );
  }
}
