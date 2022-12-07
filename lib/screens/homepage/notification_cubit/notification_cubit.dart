import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart';

part 'notification_state.dart';

class NotificationCubit extends Cubit<NotificationState> {
  NotificationCubit() : super(NotificationInitial());

  void showNotification(int index) async {
    emit(NotificationOpening());

    final data = await fetchNotification(index);

    emit(NotificationOpened(
        data.map((key, value) => MapEntry(key.toString(), value))));
  }

  void closeNotification() {
    emit(NotificationClosed());
  }
}

Future<Map> fetchNotification(int index) async {
  String baseApi = 'jsonplaceholder.typicode.com';
  final Response response =
      await get(Uri.https(baseApi, '/posts/${index + 1}'));

  if (response.statusCode == 200) {
    Map data = jsonDecode(response.body);
    return data;
  }

  return {};
}
