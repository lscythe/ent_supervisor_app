import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supervisor/features/features.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static const String path = "/login";
  static const String name = "login_screen";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<LoginCubit, LoginState>(
        builder: (context, state) => const Stack(
          children: [
            Background(),
          ],
        ),
        listener: (context, state) {},
      ),
    );
  }
}
