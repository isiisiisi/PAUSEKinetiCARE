import 'package:flutter/material.dart';
import 'package:mad3_submission1_isidro_masong_riconalla/components/my_textfield.dart';
import 'package:mad3_submission1_isidro_masong_riconalla/components/my_label.dart';
import 'package:mad3_submission1_isidro_masong_riconalla/components/main_button.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(children: [
              // LOGO
              const SizedBox(height: 50),

              SizedBox(
                height: 270.0,
                child: Image.asset(
                  'lib/assets/images/logoWname.png',
                ),
              ),

              const SizedBox(height: 15),

              // EMAIL
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const MyLabel(labelText: 'Email'),
                  const SizedBox(height: 8.0),
                  MyTextField(
                    controller: usernameController,
                    hintText: 'Enter your email',
                    obscureText: false,
                    prefixIcon:
                        const AssetImage('lib/assets/images/vectorEmail.png'),
                  ),
                ],
              ),

              const SizedBox(height: 23),

              // PASSWORD
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const MyLabel(labelText: 'Password'),
                  const SizedBox(height: 8.0),
                  MyTextField(
                    controller: passwordController,
                    hintText: 'Enter your password',
                    obscureText: true,
                    prefixIcon: const AssetImage(
                        'lib/assets/images/vectorPassword.png'),
                  ),
                ],
              ),

              const SizedBox(height: 55),

              // LOGIN BUTTON
              MainButton(
                onTap: signUserIn,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
