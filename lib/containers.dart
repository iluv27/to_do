// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'constants.dart';

// This is the container for the todo list page
class TodoContainers extends StatelessWidget {
  Widget? todoTexts;

  TodoContainers({super.key, this.todoTexts});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: kContainerDecoration,
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
        height: 60,
        width: double.infinity,
        child: todoTexts);
  }
}

// Containers for the add lsit page

class AddListContainer extends StatelessWidget {
  AddListContainer({super.key, this.inputWords});

  String? inputWords;

  // Text addAContainer() {
  //   return Text('');
  // }

  TextEditingController todoTexts = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AddListWidget(
      textField: TextField(
        controller: todoTexts,
        style: TextStyle(color: Colors.white, fontSize: 20),
        decoration: InputDecoration(
          border: UnderlineInputBorder(borderSide: BorderSide.none),
          hintText: inputWords,
          hintStyle: TextStyle(fontSize: 20),
        ),
        onSubmitted: (value) {
          todoTexts.text = value;
          print(todoTexts.text);
        },
      ),
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
