import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:test_work/repositories/users/users.dart';
import 'app.dart';

void main() {
  GetIt.I.registerLazySingleton<AbstractUsersRepository>(
    () => UsersRepository(dio: Dio()),
  );
  runApp(const MyApp());
}
