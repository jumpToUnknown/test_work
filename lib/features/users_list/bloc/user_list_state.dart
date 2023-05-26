part of 'user_list_bloc.dart';

class UsersListState {}

class UsersListInitial extends UsersListState {}

class UsersListLoaded extends UsersListState {
  UsersListLoaded({
    required this.usersList,
  });
  final List<User> usersList;
}

class UsersListLoadingFailure extends UsersListState {
  UsersListLoadingFailure({required this.exception});

  final Object? exception;
}
