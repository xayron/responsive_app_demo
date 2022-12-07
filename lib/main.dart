import 'package:demoapp/screens/homepage/notification_cubit/notification_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'screens/homepage/home_page.dart';
import 'utils/utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    generateNotification();
    return BlocProvider(
      create: (context) => NotificationCubit(),
      child: MaterialApp(
        title: 'Demo App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Colors.black,
          appBarTheme: const AppBarTheme(color: Colors.black),
          splashFactory: NoSplash.splashFactory,
        ),
        home: const HomePage(),
      ),
    );
  }
}
