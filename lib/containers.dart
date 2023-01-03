// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:to_do/lists.dart/add_list_widget.dart';

// This is the container for the todo list page
class TodoContainers extends StatelessWidget {
  String todoText;

  TodoContainers({super.key, required this.todoText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: GestureDetector(
        child: Container(
            decoration: kContainerDecoration,
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
            height: 60,
            width: double.infinity,
            child: Text(
              todoText,
              style: TextStyle(fontSize: 18),
            )),
      ),
    );
  }
}

class AddTodoContainers extends StatelessWidget {
  Widget? todoWidget;

  AddTodoContainers({super.key, this.todoWidget});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: kContainerDecoration,
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
        height: 60,
        width: double.infinity,
        child: todoWidget);
  }
}

// Containers for the add lsit page

class AddListContainer extends StatelessWidget {
  AddListContainer({super.key, this.changeText, this.newTodoText});

  TextEditingController? newTodoText = TextEditingController();

  Function(String)? changeText;

  @override
  Widget build(BuildContext context) {
    return AddListWidget(
      textField: TextField(
          controller: newTodoText,
          style: TextStyle(color: Colors.white, fontSize: 20),
          decoration: InputDecoration(
            border: UnderlineInputBorder(borderSide: BorderSide.none),
            hintText: 'Type Here',
            hintStyle: TextStyle(fontSize: 20),
          ),
          onSubmitted: changeText),
    );
  }
}

class AddListWidget extends StatelessWidget {
  AddListWidget({Key? key, this.textField}) : super(key: key);

  TextField? textField;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: kContainerDecoration,
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
        height: 60,
        width: double.infinity,
        child: textField);
  }
}
