import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp( CardWidget());

class CardWidget extends StatefulWidget {
   CardWidget(List<String> todolist)

  List<String> todoList;
  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
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
                    onTap: () => {},
                  )
                ],
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: todoList.length,
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
                        todoList[index],
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
