import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_work/repositories/users/users.dart';

part 'user_list_event.dart';
part 'user_list_state.dart';

class UsersListBloc extends Bloc<UsersListEvent, UsersListState> {
  UsersListBloc(this.usersRepository) : super(UsersListInitial()) {
    on<LoadUsersList>((event, emit) async {
      try {
        final usersList = await usersRepository.getUsersList();
        emit(UsersListLoaded(usersList: usersList));
      } catch (e) {
        emit(UsersListLoadingFailure(exception: e));
      }
    });
  }

  final AbstractUsersRepository usersRepository;
}
