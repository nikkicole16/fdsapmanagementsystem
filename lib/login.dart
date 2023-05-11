import 'package:fdsapmanagementsystem/registration.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  loginState createState() => loginState();
}

class loginState extends State<login> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  String email = '';
  String password = '';

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void _login() {
    email = emailController.text;
    password = passwordController.text;
    if (email == 'nicoleeepoonin@gmail.com' && password == '12345') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => login()),
      );
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Invalid credentials'),
            content: const Text('Please enter correct email and password.'),
            actions: [
              TextButton(
                child: const Text('OKAY'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.end,
                //   children: [
                //     // Container(
                //     //   height: 90,
                //     //   width: double.infinity,
                //     //   child: Image.asset(
                //     //     "assets/image/fdsaplogo.png",
                //     //     fit: BoxFit.cover,
                //     //   ),
                //     // ),
                //     IconButton(
                //       onPressed: () {},
                //       icon: Icon(Icons.logout),
                //     ),
                //   ],
                //  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                        height: 500,
                        width: double.infinity,
                        color: Color(0xFFffefc8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: TextFormField(
                                controller: emailController,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Email',
                                  prefixIcon: Icon(Icons.email),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: TextFormField(
                                controller: passwordController,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Password',
                                  prefixIcon: Icon(Icons.key),
                                ),
                                obscureText: true,
                              ),
                            ),
                            ElevatedButton(
                              onPressed: _login,
                              child: const Text('Login'),
                            ),
                            SizedBox(height: 20),
                            Divider(
                                color: Colors.black26,
                                endIndent: 50,
                                indent: 50),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                const Text('Dont have an account?'),
                                TextButton(
                                  child: const Text(
                                    'Register',
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => registration()),
                                    );
                                  },
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                        height: 500,
                        width: double.infinity,
                        child: Image.asset(
                          "assets/image/login.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
