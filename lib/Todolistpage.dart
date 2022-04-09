import 'package:flutter/material.dart';

void main() => runApp(const TodoListPage());

class TodoListPage extends StatelessWidget {
  const TodoListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/image.png'),
                      ),
                      border: Border.all(
                        color: const Color.fromRGBO(43, 142, 148, 1),
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(60),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Welcome, Ayoub Elhioui',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
              width: double.infinity,
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/yellowbackground.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Text('Good Afternon'),
          ],
        ),
      ),
    );
  }
}
