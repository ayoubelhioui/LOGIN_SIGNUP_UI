import 'package:flutter/material.dart';

void main() => runApp(const TodoListPage());

class TodoListPage extends StatelessWidget {
  const TodoListPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<String> todoList = ["Hey", "HelloWorld", "Ok", "Hey", "HelloWorld", "Ok"];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
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
              Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    child: Text(
                      'Good Afternoon',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: 150,
                    child: Image.asset('assets/clock.png'),
                    height: 150,
                  ),
                  const Text(
                    'Tasks List',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Tasks List',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            IconButton(
                              color: const Color.fromARGB(255, 238, 195, 66),
                              icon: const Icon(
                                Icons.add_circle_outline,
                              ),
                              onPressed: () => {},
                            )
                          ],
                        ),
                        ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: todoList.length,
                            itemBuilder: (builder, index) => ListTile(
                                  leading: const Icon(
                                      Icons.check_box_outline_blank_rounded),
                                  title: Text(
                                    todoList[index],
                                  ),
                                )),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
