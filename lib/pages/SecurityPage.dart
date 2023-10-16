// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, curly_braces_in_flow_control_structures, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:ui_ovo/components/AnimatedBox.dart';

class SecurityPage extends StatefulWidget {
  const SecurityPage({Key? key}) : super(key: key);

  @override
  State<SecurityPage> createState() => _SecurityPageState();
}

class _SecurityPageState extends State<SecurityPage> {
  var number = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0];
  var inputText = "";
  var actives = [false, false, false, false, false];
  var clears = [false, false, false, false, false];
  var values = [1, 2, 3, 2, 1];
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Container(
                height: 100.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for(var i = 0; i< actives.length ;i++) AnimatedBox(
                      clear: clears[i],
                      active: actives[i],
                      value: values[i],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: GridView.builder(
              padding: EdgeInsets.all(0.0),
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 0.7 / 0.6
              ), 
              itemBuilder: (context, index) => Container(
                margin: EdgeInsets.all(4.0),
                width: 50,
                height: 50,
                child: index == 9 
                ? SizedBox()
                : Center(
                  child: MaterialButton(
                    onPressed: () {
                      setState(() {
                        clears[currentIndex] = true;
                        currentIndex++;
                      });
                      if (index == 11) {
                        inputText = inputText.substring(0, inputText.length - 1);
                      } else
                      inputText += number[index == 10 ? index - 1 : index].toString();
                    },
                    color: Colors.white30,
                    minWidth: 50,
                    height: 55,
                    child: index == 11
                    ? Icon(
                        Icons.backspace,
                        color: Colors.white,
                      )
                    : Text(
                        "${number[index == 10 ? index - 1 : index]}",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35.0),
                    ),
                  ),
                ),
              ),
              itemCount: 12,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
        ],
      )
    );
  }
}
