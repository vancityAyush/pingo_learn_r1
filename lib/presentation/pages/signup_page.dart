import 'package:flutter/material.dart';
import 'package:pingo_learn_r1/core/core.dart';
import 'package:pingo_learn_r1/presentation/widgets/loading_button.dart';
import 'package:provider/provider.dart';

import '../providers/auth_provider.dart';

final _signUpForm = GlobalKey<FormState>();

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String _name = '';
    String _email = '';
    String _password = '';
    final authProvider = Provider.of<AuthProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'e-Shop',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Form(
              key: _signUpForm,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Name',
                    ),
                    validator: nameValidator,
                    keyboardType: TextInputType.name,
                    onSaved: (value) {
                      _name = value!;
                    },
                  ),
                  16.verticalSpace,
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Email',
                    ),
                    validator: emailValidator,
                    keyboardType: TextInputType.emailAddress,
                    onSaved: (value) {
                      _email = value!;
                    },
                  ),
                  16.verticalSpace,
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Password',
                    ),
                    validator: passwordValidator,
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
              text: "Signup",
              onPressed: () async {
                if (!_signUpForm.currentState!.validate()) {
                  return;
                }
                _signUpForm.currentState!.save();
                print(
                  "Signing up",
                );
                print(_email);
                try {
                  await authProvider.signUp(
                    email: _email,
                    password: _password,
                    name: _name,
                  );
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Signup Successful'),
                      backgroundColor: Colors.green,
                    ),
                  );
                  Navigator.pushReplacementNamed(context, '/');
                } on AuthException catch (e) {
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
                Navigator.pushReplacementNamed(context, '/login');
              },
              child: RichText(
                text: const TextSpan(
                  text: 'Already have an account? ',
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: 'Login',
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
      ),
    );
  }
}
