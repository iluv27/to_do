// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:to_do/Screens/add_list.dart';
import 'package:to_do/constants.dart';
import 'package:to_do/lists.dart/add_list_widget.dart';

class AddItems extends StatefulWidget {
  const AddItems({super.key});

  @override
  State<AddItems> createState() => _AddItemsState();
}

class _AddItemsState extends State<AddItems> {
  CreateList createList = CreateList();
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
                          createList.addNewList[index],
                        ],
                      ),
                    ],
                  );
                },
                itemCount: createList.listCount,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
