import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:papersy/application/auth/sign_in/sign_in_bloc.dart';
import 'package:papersy/presentation/auth/sign_up/sign_up_page.dart';
import 'package:papersy/presentation/common/heading_text.dart';
import 'package:papersy/sizeconfig.dart';

class SignInWidget extends StatelessWidget {
  const SignInWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GetIt.I<SizeConfig>().init(context);
    final double _height = SizeConfig.blockSizeVertical;
    final double _width = SizeConfig.blockSizeHorizontal;
    return BlocConsumer<SignInBloc, SignInState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Theme.of(context).backgroundColor,
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: _height * 25),
                const HeadingText(
                    mainTitle: "Welcome back!",
                    subTitle: "Please login to your account."),
                SizedBox(height: _height * 4.5),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: _height * 3.8),
                  child: Form(
                    autovalidateMode: state.showErrorMessages,
                    child: Column(
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          enabled: state.isSubmitting ? false : true,
                          autocorrect: false,
                          onChanged: (value) => context
                              .read<SignInBloc>()
                              .add(SignInEvent.emailChanged(value)),
                          validator: (_) => context
                              .read<SignInBloc>()
                              .state
                              .emailAddress
                              .value
                              .fold(
                                  (l) => l.maybeMap(
                                      invalidEmail: (_) => 'Invalid Email',
                                      orElse: () => null),
                                  (r) => null),
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            floatingLabelBehavior: FloatingLabelBehavior.auto,
                            labelText: "Email Address",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: _height * 3.5),
                        TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          enabled: state.isSubmitting ? false : true,
                          obscureText: true,
                          autocorrect: false,
                          onChanged: (value) => context
                              .read<SignInBloc>()
                              .add(SignInEvent.passwordChanged(value)),
                          validator: (_) => context
                              .read<SignInBloc>()
                              .state
                              .password
                              .value
                              .fold(
                                  (l) => l.maybeMap(
                                      shortPassword: (_) =>
                                          'Password is too short',
                                      orElse: () => null),
                                  (r) => null),
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            floatingLabelBehavior: FloatingLabelBehavior.auto,
                            labelText: "Password",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: _height * 3.5),
                        state.isSubmitting
                            ? const CircularProgressIndicator()
                            : Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  ElevatedButton(
                                    onPressed: () => context
                                        .read<SignInBloc>()
                                        .add(const SignInEvent
                                            .signInWithEmailAndPasswordPressed()),
                                    child: const Text('Get going'),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.pushNamed(context, "reset");
                                    },
                                    child: Text(
                                      "Reset Password",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: _height * 2.3,
                                        fontWeight: FontWeight.w600,
                                        color: Theme.of(context)
                                            .textTheme
                                            .headline6!
                                            .color,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                        SizedBox(height: _height * 8.5),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) => SignUpPage(),
                              ),
                            );
                          },
                          child: Text(
                            "Don't have an account? SignUp",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: _height * 2.4,
                              fontWeight: FontWeight.w700,
                              color:
                                  Theme.of(context).textTheme.headline6!.color,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
