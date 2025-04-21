import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:task_togas/InputField.dart';
import 'package:task_togas/myMaterialButton.dart';

class Homescreen extends StatefulWidget {
  Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List names = [];

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    debugPrint('$names');

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(names.toString()),
              // TextField(
              //   controller: controller,
              // ),
              MyInputField(
                controller: controller,
                hintext: "Enter Text",
                firstIcon: Icons.edit_note_rounded,
              ),
              Mymaterialbutton(
                  onPressed: () {
                    print(controller.text);
                    names.add(controller.text);
                    setState(() {});
                  },
                  text: "Add"),
              Mymaterialbutton(
                  onPressed: () {
                    setState(() {
                      if (names.contains(controller.text)) {
                        names.remove(controller.text);
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content:
                                Text("This input does no exist in the list")));
                      }
                    });
                  },
                  text: "Remove")

              // TextButton(
              //     onPressed: () {
              //       setState(() {
              //         if (names.contains(controller.text)) {
              //           names.remove(controller.text);
              //         } else {
              //           ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              //               content:
              //                   Text("This input does no exist in the list")));
              //         }
              //       });
              //     },
              //     child: Text('Remove')),
            ],
          ),
        ),
      ),
    );
  }
}
