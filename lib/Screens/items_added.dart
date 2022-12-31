// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:to_do/Screens/add_list.dart';
import 'package:to_do/constants.dart';
import 'package:to_do/containers.dart';

class AddItems extends StatefulWidget {
  const AddItems({super.key});

  @override
  State<AddItems> createState() => _AddItemsState();
}

class _AddItemsState extends State<AddItems> {
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
                return AddList();
              })));
            },
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.white)),
            child: Icon(FontAwesomeIcons.plus),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                Text('today'),
                TodoContainers(
                    todoTexts: Text(
                  'Do my biology homework',
                  style: TextStyle(fontSize: 18),
                )),
                kSpaces,
                TodoContainers(
                    todoTexts: Text(
                  'Send an email to my teacher',
                  style: TextStyle(fontSize: 18),
                )),
                kSpaces,
                TodoContainers(
                    todoTexts: Text(
                  'Have a date with Sarah',
                  style: TextStyle(fontSize: 18),
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
