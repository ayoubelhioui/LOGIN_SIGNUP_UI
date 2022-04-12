import 'package:flutter/material.dart';
import 'TasksCard.dart';
import 'Clockclass.dart';

void main() => runApp(const TodoListPage());

class TodoListPage extends StatefulWidget {
  const TodoListPage({Key? key}) : super(key: key);

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  @override
  Widget build(BuildContext context) {
    List<int> clockList = [
      DateTime.now().hour,
      DateTime.now().minute,
      DateTime.now().second
    ];
    List<String> todoList = [
      "Have breakfast at 10 am",
      "Beign at school at 11 am",
      "Learn Flutter at 12 pm",
      "Have lunch at 1 pm",
      "Working at cursus at 2 pm",
      "Working at cursus at 2 pm",
      "Working at cursus at 2 pm",
      "Have dinner at 8 am"
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          right: 300,
                        ),
                        child: InkWell(
                          onTap: () => Navigator.pop(context),
                          child: const Icon(Icons.arrow_back,
                              color: Color.fromRGBO(43, 142, 148, 1)),
                        ),
                      ),
                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage('assets/images/image.png'),
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
                          fontFamily: 'Poppins',
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
                    image: AssetImage('assets/images/yellowbackground.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                children: const [
                   SizedBox(
                    height: 20,
                  ),
                   Padding(
                    child: Text(
                      'Good Afternoon',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(43, 142, 148, 1),
                      ),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20),
                  ),
                  ClockClass(),
                   SizedBox(
                    height: 15,
                  ),
                   SizedBox(height: 10),
                   Text(
                    'Tasks List',
                    style: TextStyle(
                        fontSize: 20,
                        height: 1,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(43, 142, 148, 1),
                        fontFamily: 'Poppins'),
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
