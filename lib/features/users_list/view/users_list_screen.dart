import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:test_work/features/users_list/widgets/widgets.dart';
import 'package:test_work/repositories/users/users.dart';
import 'package:test_work/features/users_list/bloc/user_list_bloc.dart';
import '../../../theme/theme.dart';

class UsersListScreen extends StatefulWidget {
  const UsersListScreen({super.key});
  @override
  State<UsersListScreen> createState() => _UsersListScreenState();
}

class _UsersListScreenState extends State<UsersListScreen> {
  final _userListBloc = UsersListBloc(
    GetIt.I<AbstractUsersRepository>(),
  );

  @override
  void initState() {
    _userListBloc.add(LoadUsersList());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Пользователи',
          ),
        ),
        body: BlocBuilder<UsersListBloc, UsersListState>(
          bloc: _userListBloc,
          builder: (context, state) {
            if (state is UsersListLoaded) {
              return ListView.separated(
                padding: const EdgeInsets.only(top: 16),
                itemCount: state.usersList.length,
                separatorBuilder: (context, index) => const Divider(),
                itemBuilder: (context, i) {
                  final user = state.usersList[i];
                  return UserTile(user: user);
                },
              );
            }

            if (state is UsersListLoadingFailure) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Network error!',
                      style: theme.textTheme.headlineMedium,
                    ),
                  ],
                ),
              );
            }

            return const Center(child: CircularProgressIndicator());
          },
        )

        /*(_UserCoinsList == null)
      ? const Center(child: CircularProgressIndicator())
      : ListView.separated(
        padding: const EdgeInsets.only(top:16),
        itemCount: _UserCoinsList!.length,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, i) {
          final coin = _UserCoinsList![i];
          return UserCoinTile(coin: coin);
        },
      ),*/
        );
  }
}
