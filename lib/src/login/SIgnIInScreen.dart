import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:library_app/src/utils/colors_utils.dart';
//import 'package:flutter_application_2/screens/SignUpScreen.dart';
import 'package:library_app/src/screens/homee_screen.dart';
import 'package:url_launcher/url_launcher.dart';

import 'SIgnUpScreen.dart';
// import 'home_screen.dart';

class SignIInScreen extends StatefulWidget {
  const SignIInScreen({Key key}) : super(key: key);

  @override
  State<SignIInScreen> createState() => _SignIInScreenState();
}

class _SignIInScreenState extends State<SignIInScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/login.png'), fit: BoxFit.cover),
          gradient: LinearGradient(
            colors: [
              hexStringToColor("CB2B93"),
              hexStringToColor("9546C4"),
              hexStringToColor("5E61F4")
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Add your image here
            // Image.network(
            //   'assets/login.png',
            //   fit: BoxFit.cover,
            // ),
            // Add your sign-in UI elements here
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextField(
                    style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                    controller: _emailController,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      prefixIcon: Icon(Icons.email),
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextField(
                    style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      prefixIcon: Icon(Icons.lock),
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    // Add your sign-in logic here
                    final email = _emailController.text;
                    final password = _passwordController.text;
                    print('Email: $email');
                    print('Password: $password');
                    FirebaseAuth.instance
                        .signInWithEmailAndPassword(
                            email: _emailController.text,
                            password: _passwordController.text)
                        .then((value) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeeScreen()),
                      ).onError((error, stackTrace) {
                        print(error);
                      });
                    });
                  },
                  child: const Text('Sign In'),
                ),
                const SizedBox(height: 20.0),
                GestureDetector(
                  // onTap: () {
                  //   // Navigate to SignUpScreen
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(builder: (context) => SignUpScreen()),
                  //   );
                  // },
                  child: const Text(
                    'Don\'t have an account? Sign Up',
                    style: TextStyle(
                      color: Color.fromARGB(255, 253, 253, 253),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
