import 'package:test_work/features/login/login.dart';
import '../features/users_list/user_list.dart';

final router = {
  '/': (context) => const LoginPage(),
  '/users': (context) => const UsersListScreen(),
};
