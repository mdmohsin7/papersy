import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:papersy/application/auth/sign_in/sign_in_bloc.dart';
import 'package:papersy/injection.dart';
import 'package:papersy/presentation/auth/sign_in/widgets/sign_in_widget.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignInBloc>(),
      child: const SignInWidget(),
    );
  }
}
