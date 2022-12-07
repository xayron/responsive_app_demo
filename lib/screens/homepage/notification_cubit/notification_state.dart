part of 'notification_cubit.dart';

abstract class NotificationState extends Equatable {
  const NotificationState();

  @override
  List<Object> get props => [];
}

class NotificationInitial extends NotificationState {}

class NotificationOpening extends NotificationState {}

class NotificationOpened extends NotificationState {
  final Map<String, dynamic> data;

  const NotificationOpened(this.data);

  @override
  List<Object> get props => [data];
}

class NotificationClosed extends NotificationState {}
