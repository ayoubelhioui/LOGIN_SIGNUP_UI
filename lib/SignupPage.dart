import 'package:flutter/material.dart';

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
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [ 
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: IconButton(
                      padding: const EdgeInsets.only(right: 100),
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(Icons.arrow_back),
                    ),
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
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                            decoration: InputDecoration(labelText: 'Confirm Password'),
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
                                onPressed: () => {},
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
