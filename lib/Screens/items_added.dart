// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:to_do/Screens/add_list.dart';
import 'package:to_do/constants.dart';
import 'package:to_do/lists.dart/add_list_widget.dart';
import 'package:to_do/containers.dart';

class AddItems extends StatefulWidget {
  const AddItems({super.key});

  @override
  State<AddItems> createState() => _AddItemsState();
}

class _AddItemsState extends State<AddItems> {
  // CreateList createList = CreateList();

  List<Task> task = [
    Task(name: 'Go to the market'),
    Task(name: 'Visit shop'),
    Task(name: 'Be a good person'),
  ];

  TextEditingController newTodoText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text('Todo List', style: kFontStyle),
        ),
        actions: [
          TextButton(
            onPressed: (() {}),
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.white)),
            child: Icon(FontAwesomeIcons.check),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: ((context) {
                return AddList(
                  addCallBack: (() {
                    setState(() {
                      // CreateList().addToCreateList(newTodoText.text);'
                      task.add(Task(name: newTodoText.text));
                    });
                    Navigator.pop(context);
                  }),
                  addListContainer: AddListContainer(
                    newTodoText: newTodoText,
                    changeText: (value) {
                      newTodoText.text = value.toString();
                      print(newTodoText.text);
                    },
                  ),
                );
              })));
            },
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.white)),
            child: Icon(FontAwesomeIcons.plus),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Today'),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Column(
                        children: [
                          // createList.addNewList[index],
                          TodoContainers(todoText: task[index].name),
                        ],
                      ),
                    ],
                  );
                },
                itemCount: task.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
