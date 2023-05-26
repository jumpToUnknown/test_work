import 'users.dart';

abstract class AbstractUsersRepository {
  Future<List<User>> getUsersList();
}
