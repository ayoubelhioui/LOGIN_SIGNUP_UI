import 'package:flutter/material.dart';
import 'package:login_signup/LoginPage.dart';

void main() => runApp(const SignUp());

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.amber),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white12,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context),
            ),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Column(
                        children: [
                          const Text(
                            'Sign up',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.amber),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            'Create an account, it\'s free',
                            style: TextStyle(color: Colors.grey),
                          ),
                          const TextField(
                            decoration: InputDecoration(labelText: 'Email'),
                          ),
                          const TextField(
                            decoration: InputDecoration(labelText: 'Password'),
                            obscureText: true,
                          ),
                          const TextField(
                            decoration:
                                InputDecoration(labelText: 'Confirm Password'),
                            obscureText: true,
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          SizedBox(
                            width: 300,
                            child: ElevatedButton(
                              onPressed: () => {},
                              child: const Text('Sign up'),
                              style: ElevatedButton.styleFrom(
                                  shape: const StadiumBorder()),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('Already have an account?'),
                              TextButton(
                                onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((_) => const LoginPage()))),
                                child: const Text('Login'),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
