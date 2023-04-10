import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_rev/injection.dart';
import 'package:game_rev/src/core/config/navigation/navigation.dart';
import 'package:game_rev/src/features/authentication/presentation/authentication_bloc.dart';
import 'package:game_rev/src/features/dashboard/presentation/flagged_reviews.dart';

import '../admin_bloc.dart';
import 'add_game_screen.dart';

class AdminScreen extends StatelessWidget {
  static const routeName = '/admin';

  const AdminScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AdminBloc>(
      create: (context) => getIt<AdminBloc>(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Admin Screen'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigation.intent(context, AddGameScreen.routeName);
          },
          child: const Icon(Icons.add),
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/dashboard');
                },
                child: const Text('Go to Dashboard'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigation.intent(context, FlaggedReviewsScreens.routeName);
                },
                child: const Text('Review flagged Reviews'),
              ),
              ElevatedButton(
                  onPressed: () {
                    context
                        .read<AuthenticationBloc>()
                        .add(const SignOutEvent());
                  },
                  child: const Text('Logout')),
            ],
          ),
        ),
      ),
    );
  }
}
