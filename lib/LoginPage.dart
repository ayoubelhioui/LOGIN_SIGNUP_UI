import 'package:flutter/material.dart';
import 'package:login_signup/Todolistpage.dart';
import 'SignupPage.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp(const LoginPage());

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  void fetchingData() async {
    try {
      const url =
          'https://todolist-9515c-default-rtdb.firebaseio.com/info.json';
      final data = await http.get(Uri.parse(url));
      final returnedData = jsonDecode(data.body) as Map;
      returnedData.forEach((key, value) { 
        if (value['email'] == _emailcontroller.text && value['Password'] == _passwordcontroller.text){
          Navigator.push(context, MaterialPageRoute(builder: (_)=>const TodoListPage()));
          _emailcontroller.clear();
          _passwordcontroller.clear();
        }
      });
    } catch (e) {
      return ;
    }
  }
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.amber),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white24,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Column(
                      children: [
                        const Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        const Text('Login to your account'),
                        const SizedBox(
                          height: 40,
                        ),
                         TextField(
                          controller: _emailcontroller,
                          decoration: const InputDecoration(labelText: 'Email'),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                         TextField(
                           controller: _passwordcontroller,
                          obscureText: true,
                          decoration: const InputDecoration(labelText: 'Password'),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        SizedBox(
                          width: 300,
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: const StadiumBorder()),
                            onPressed: () => fetchingData(),
                            child: const Text('Login'),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Don\'t have an account?'),
                            TextButton(
                                onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => const SignUp())),
                                child: const Text('Sign Up'))
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Image.asset(
                'assets/images/background.png',
                width: 400,
                height: 205,
                fit: BoxFit.fill,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
