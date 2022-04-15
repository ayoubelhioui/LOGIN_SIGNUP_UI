import 'package:flutter/material.dart';
import 'package:login_signup/LoginPage.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

void main() => runApp(const SignUp());

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _firstNamecontroller = TextEditingController();
  final TextEditingController _lastNamecontroller = TextEditingController();
  final TextEditingController _passdwordcontroller = TextEditingController();
  final TextEditingController _confirmcontroller = TextEditingController();

  void addItem() async{
    const dbUrl = 'https://todolist-9515c-default-rtdb.firebaseio.com/info.json';
    if (_passdwordcontroller.text == _confirmcontroller.text)
    {
       await http.post(Uri.parse(dbUrl), body:json.encode({
        'email': _emailcontroller.text,
        'firstName': _firstNamecontroller.text,
        'lastName': _lastNamecontroller.text,
        'Password': _passdwordcontroller.text
      }));
        _emailcontroller.clear();
      _firstNamecontroller.clear();
      _lastNamecontroller.clear();
      _passdwordcontroller.clear();
      _confirmcontroller.clear(); 
    }
  }
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
                child: SingleChildScrollView(
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
                                  color: Color(0xFFFFC107)),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            const Text(
                              'Create an account, it\'s free',
                              style: TextStyle(color: Colors.grey),
                            ),
                             TextField(
                              controller: _emailcontroller,
                              decoration: const InputDecoration(labelText: 'Email'),
                            ),
                              TextField(
                              controller: _firstNamecontroller,
                              decoration: const InputDecoration(labelText: 'First Name'),
                            ),
                              TextField(
                              controller: _lastNamecontroller,
                              decoration: const InputDecoration(labelText: 'Last Name'),
                            ),
                             TextField(
                               controller: _passdwordcontroller,
                              decoration: const InputDecoration(labelText: 'Password'),
                              obscureText: true,
                            ),
                             TextField(
                              controller: _confirmcontroller,
                              decoration:
                                  const InputDecoration(labelText: 'Confirm Password'),
                              obscureText: true,
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            SizedBox(
                              width: 300,
                              child: ElevatedButton(
                                onPressed: () => addItem(),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
