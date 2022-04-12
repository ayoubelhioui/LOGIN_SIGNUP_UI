import 'package:flutter/material.dart';
import 'CheckBox.dart';

class CardWidget extends StatefulWidget {
  List<String> todoList;
  CardWidget(this.todoList, {Key? key}) : super(key: key);

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  TextEditingController taskController = TextEditingController();
  bool? value = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Tasks List',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  InkWell(
                    child: const Icon(
                      Icons.add_circle_outline,
                      color: Color.fromRGBO(43, 142, 148, 1),
                    ),
                    onTap: () {
                      showModalBottomSheet(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        context: context,
                        builder: (_) {
                          return SizedBox(
                            height: 300,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Add the task here',
                                  style: TextStyle(fontFamily: 'Poppins'),
                                ),
                                SizedBox(
                                  width: 250,
                                  child: TextField(
                                    controller: taskController,
                                    decoration: const InputDecoration(
                                      label: Text('Task'),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 150,
                                  child: ElevatedButton(
                                      onPressed: () => setState(() {
                                            Navigator.pop(context);
                                            widget.todoList
                                                .add(taskController.text);
                                            taskController.clear();
                                          }),
                                      child: const Text('Add')),
                                )
                              ],
                            ),
                          );
                        },
                      );
                    },
                  )
                ],
              ),
            ),
            Scrollbar(
              isAlwaysShown: true,
              child: SizedBox(
                height: 150,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: widget.todoList.length,
                  itemBuilder: (builder, index) => SizedBox(
                    height: 30,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Transform.scale(
                          scale: 0.7,
                          child: const Checkboxclass(),
                        ),
                        Text(
                          widget.todoList[index],
                          style: const TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 20),
                          child: InkWell(
                            onTap: (() {
                              setState(
                                () {
                                  widget.todoList.removeAt(index);
                                },
                              );
                            }),
                            child: const Icon(
                              Icons.remove_circle,
                              color: Colors.red,
                              size: 20,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
