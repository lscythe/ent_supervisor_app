import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supervisor/constants/constants.dart';
import 'package:supervisor/extensions/build_context_ext.dart';
import 'package:supervisor/features/features.dart';
import 'package:supervisor/generated/assets.gen.dart';
import 'package:supervisor/widgets/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static const String path = "/login";
  static const String name = "login_screen";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final FocusNode _usernameNode = FocusNode();
  final FocusNode _passwordNode = FocusNode();

  bool _obscureText = true;
  bool _isForgotPassword = false;
  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    _emailController.dispose();
    _usernameNode.dispose();
    _passwordNode.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<LoginCubit, LoginState>(
        builder: (context, state) => Stack(
          children: [
            const Background(),
            ListView(
              shrinkWrap: true,
              children: [
                Assets.images.appLogo.image(scale: 2.5),
                Center(
                  child: Text(
                    _isForgotPassword
                        ? context.localization.forgotPassword
                        : context.localization.loginTitle,
                    textAlign: TextAlign.start,
                    style: context.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Spaces.h12.size,
                Visibility(
                  visible: !_isForgotPassword,
                  child: _loginForm(),
                ),
                Visibility(
                  visible: _isForgotPassword,
                  child: _forgotPasswordForm(),
                ),
              ],
            ),
          ],
        ),
        listener: (context, state) {},
      ),
    );
  }

  Widget _loginForm() => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(child: Container()),
          Flexible(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                KTextField(
                  hint: context.localization.usernameHint,
                  borderRadius: KRadius.r32.size,
                  prefixIcon: const Icon(AppIcons.username),
                  focusNode: _usernameNode,
                  onEditingComplete: () => _usernameNode.nextFocus(),
                  textInputAction: TextInputAction.next,
                  // onChanged: context.read<LoginCubit>().onUsernameChanged,
                ),
                Spaces.h12.size,
                KTextField(
                  hint: context.localization.passwordHint,
                  borderRadius: KRadius.r32.size,
                  prefixIcon: const Icon(AppIcons.password),
                  obscureText: _obscureText,
                  suffixIcon: IconButton(
                    onPressed: _changePasswordVisibility,
                    icon: Icon(
                      _obscureText ? AppIcons.hide : AppIcons.show,
                    ),
                  ),
                  focusNode: _passwordNode,
                  // onChanged: context.read<LoginCubit>().onPasswordChanged,
                ),
                Spaces.h12.size,
                Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        _isForgotPassword = !_isForgotPassword;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        context.localization.forgotPassword,
                        style: context.textTheme.bodyLarge
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Spaces.h12.size,
                KElevatedButton(
                  label: context.localization.loginBtn,
                  mainAxisSize: MainAxisSize.max,
                  onPressed: () {
                    context.hideKeyboard();
                    // context.read<LoginCubit>().login();
                  },
                  suffixIcon: Icon(
                    AppIcons.chevronRight,
                    color: context.colorScheme.onPrimary,
                  ),
                ),
              ],
            ),
          ),
          Flexible(child: Container()),
        ],
      );

  Widget _forgotPasswordForm() => Row(
        children: [
          Flexible(child: Container()),
          Flexible(
            child: Column(
              children: [
                KTextField(
                  hint: "Email address",
                  borderRadius: KRadius.r32.size,
                  prefixIcon: const Icon(AppIcons.email),
                  textInputAction: TextInputAction.next,
                  controller: _emailController,
                ),
                Spaces.h12.size,
                KElevatedButton(
                  label: "Reset Password",
                  mainAxisSize: MainAxisSize.max,
                  onPressed: () {
                    context.hideKeyboard();
                    // context.read<LoginCubit>().forgotPassword(_emailController.text);
                  },
                ),
                Spaces.h12.size,
                Align(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        _isForgotPassword = !_isForgotPassword;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Back to Login",
                        style: context.textTheme.bodyLarge
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Flexible(child: Container()),
        ],
      );

  void _changePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  SnackBar _errorSnackBar(String message) => SnackBar(content: Text(message));
}
