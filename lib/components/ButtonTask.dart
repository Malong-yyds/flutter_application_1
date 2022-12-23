// ignore_for_file: implementation_imports, prefer_typing_uninitialized_variables, file_names

import 'package:flutter/material.dart';

class ButtonTask extends StatefulWidget {
  const ButtonTask({super.key});

  @override
  State<ButtonTask> createState() => _ButtonTaskState();
}

class _ButtonTaskState extends State<ButtonTask> {
  var value;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          MaterialButton(
              elevation: 100,
              // color: Color.fromARGB(10, 4, 13, 77),
              color: Colors.red.shade300,
              child: const Text(
                "hello world",
                // style:TextStyle(),
              ),
              onPressed: () {
                print("onpressed");
              }),
          FloatingActionButton(
            focusColor: Colors.redAccent,
            child: const Text('data'),
            onPressed: () {},
          ),
          DropdownButton(
            // ignore: prefer_const_literals_to_create_immutables
            items: [
              const DropdownMenuItem(
                value: 1,
                child: Text('man'),
              ),
              const DropdownMenuItem(
                value: 0,
                child: Text('women'),
              )
            ],
            onChanged: (v) {
              setState(() {
                value = v;
                print(value);
              });
            },
            value: value,
            hint: const Text("下拉选择性别"),
          ),
          IconButton(
            onPressed: () {
              print("pressed this");
            },
            icon: const Icon(Icons.add_to_photos),
            color: Colors.red,
            iconSize: 50,
          )
        ],
      ),
    );
  }
}
