import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'TasksCard.dart';

void main() => runApp(const TodoListPage());

class TodoListPage extends StatefulWidget {
  const TodoListPage({Key? key}) : super(key: key);

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  @override
  Widget build(BuildContext context) {
    List<String> todoList = [];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset:false,
        body: SafeArea(
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       InkWell(
                         onTap:() => Navigator.pop(context),
                        child:  const Icon(Icons.arrow_back),
                      ),
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
                      Text(
                        'Welcome, Ayoub Elhioui',
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/yellowbackground.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    child: Text(
                      'Good Afternoon',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: 150,
                    child: Image.asset('assets/clock.png'),
                    height: 150,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Tasks List',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: CardWidget(todoList),
              )
            ],
          ),
        ),
      ),
    );
  }
}
