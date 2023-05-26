import 'package:flutter/material.dart';
import 'package:test_work/router/router.dart';
import 'package:test_work/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme,
      routes: router,
    );
  }
}
