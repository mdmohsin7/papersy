import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:papersy/application/auth/sign_in/sign_in_bloc.dart';
import 'package:papersy/presentation/auth/sign_in/sign_in_page.dart';
import 'package:papersy/presentation/common/heading_text.dart';
import 'package:papersy/sizeconfig.dart';

class SignUpWidget extends StatelessWidget {
  const SignUpWidget({Key? key}) : super(key: key);

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
                  SizedBox(
                    height: _height * 25,
                  ),
                  const HeadingText(
                    mainTitle: "Let's get going!",
                    subTitle: "Please enter your details.",
                  ),
                  SizedBox(
                    height: _height * 4.5,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Form(
                      autovalidateMode: state.showErrorMessages,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFormField(
                            autocorrect: false,
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              floatingLabelBehavior: FloatingLabelBehavior.auto,
                              labelText: "Username",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: _height * 2.5),
                          TextFormField(
                            onChanged: (value) => null,
                            validator: (_) => null,
                            keyboardType: TextInputType.emailAddress,
                            autocorrect: false,
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
                          SizedBox(height: _height * 2.5),
                          TextFormField(
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: true,
                            autocorrect: false,
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
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.all(20),
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                ),
                                onPressed: () {},
                                child: const Text("Let's Get Started"),
                              ),
                            ),
                          ),
                          SizedBox(height: _height * 7.5),
                          Center(
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                        builder: (context) => SignInPage()));
                              },
                              child: Text(
                                "Already have an account? SignIn",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: _height * 2.4,
                                    fontWeight: FontWeight.w700,
                                    color: Theme.of(context)
                                        .textTheme
                                        .headline6!
                                        .color),
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
        });
  }
}
