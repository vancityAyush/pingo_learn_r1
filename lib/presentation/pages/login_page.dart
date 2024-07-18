import 'package:flutter/material.dart';
import 'package:pingo_learn_r1/core/core.dart';
import 'package:pingo_learn_r1/presentation/providers/remote_config_provider.dart';
import 'package:pingo_learn_r1/presentation/widgets/loading_button.dart';
import 'package:provider/provider.dart';

import '../providers/auth_provider.dart';

final _loginFormKey = GlobalKey<FormState>();

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
    String _email = '';
    String _password = '';
    return Scaffold(
      appBar: AppBar(
        title: const Text('e-Shop'),
      ),
      body: Consumer<RemoteConfigProvider>(
        builder: (context, provider, child) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                Form(
                  key: _loginFormKey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    children: [
                      TextFormField(
                        validator: emailValidator,
                        decoration: const InputDecoration(
                          hintText: 'Email',
                        ),
                        keyboardType: TextInputType.emailAddress,
                        onSaved: (value) {
                          _email = value!;
                        },
                      ),
                      14.verticalSpace,
                      TextFormField(
                        validator: passwordValidator,
                        decoration: const InputDecoration(
                          hintText: 'Password',
                        ),
                        obscureText: true,
                        onSaved: (value) {
                          _password = value!;
                        },
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                RoundedLoadingButton(
                  text: "Login",
                  onPressed: () async {
                    if (!_loginFormKey.currentState!.validate()) {
                      return;
                    }
                    _loginFormKey.currentState!.save();
                    try {
                      await authProvider.signIn(
                        email: _email,
                        password: _password,
                      );
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Login Successful'),
                          backgroundColor: Colors.green,
                        ),
                      );
                      Navigator.pushReplacementNamed(context, '/');
                    } on AuthException catch (e) {
                      print(e.message);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(e.message),
                          backgroundColor: Colors.red,
                        ),
                      );
                    }
                  },
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/signup');
                  },
                  child: RichText(
                    text: const TextSpan(
                      text: 'New here? ',
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                          text: 'Sign Up',
                          style: TextStyle(
                            color: AppColors.primary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
