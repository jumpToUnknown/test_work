import 'package:dio/dio.dart';
import 'dart:convert';
import 'users.dart';

class UsersRepository implements AbstractUsersRepository {
  UsersRepository({required this.dio});

  final Dio dio;

  @override
  Future<List<User>> getUsersList() async {
    final response = await dio.get('https://jsonplaceholder.typicode.com/users');
    final data = jsonDecode(response.data);
    final List<User> usersList;

    usersList = data.entries.map((user) {
      final name = user['name'];
      final email = user['email'];
      
      return User(name: name, email: email);
    }).toList();
    print(response);
    return usersList;
  }
}


