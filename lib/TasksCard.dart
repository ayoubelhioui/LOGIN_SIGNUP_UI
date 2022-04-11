import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class CardWidget extends StatefulWidget {
  List<String> todoList;
  CardWidget(this.todoList, {Key? key}) : super(key: key);

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  TextEditingController taskController = TextEditingController();
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
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Tasks List',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  InkWell(
                    child: const Icon(
                      Icons.add_circle_outline,
                      color: Color.fromARGB(255, 238, 195, 66),
                    ),
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (_) {
                          return SizedBox(
                            height: 300,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Add the task here',
                                  style: GoogleFonts.poppins(),
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
                                      onPressed: () =>setState(() {
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
            SizedBox(
              height: 150,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: widget.todoList.length,
                itemBuilder: (builder, index) => SizedBox(
                  height: 30,
                  child: Row(
                    children: [
                      Transform.scale(
                        scale: 0.7,
                        child: Checkbox(
                          value: false,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          onChanged: (newVal) {},
                        ),
                      ),
                      Text(
                        widget.todoList[index],
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ],
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
