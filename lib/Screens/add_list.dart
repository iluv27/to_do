// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:to_do/constants.dart';
import 'package:to_do/containers.dart';

class AddList extends StatefulWidget {
  const AddList({super.key});

  @override
  State<AddList> createState() => _AddListState();
}

class _AddListState extends State<AddList> {
  Widget todoContainers =
      TodoContainers(todoTexts: Icon(FontAwesomeIcons.plus));
  Widget todoContainers2 =
      TodoContainers(todoTexts: Icon(FontAwesomeIcons.plus));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        leading: TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.white)),
            child: Icon(FontAwesomeIcons.arrowLeft)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('Add List', style: kFontStyle),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
        child: Column(
          children: [
            Column(
              children: [
                AddListContainer(inputWords: 'Type Here'),
                kSpaces,
                InkWell(
                    onTap: () {
                      todoContainers =
                          AddListContainer(inputWords: 'Type Here');
                    },
                    child: todoContainers),
                kSpaces,
                GestureDetector(
                    onTap: () {
                      setState(() {
                        todoContainers2 =
                            AddListContainer(inputWords: 'Type Here');
                      });
                    },
                    child: todoContainers2),
              ],
            ),
            //   CupertinoButton(
            //     // Display a CupertinoDatePicker in date picker mode.
            //     onPressed: () => (CupertinoDatePicker(
            //       initialDateTime: date,
            //       mode: CupertinoDatePickerMode.date,
            //       use24hFormat: true,
            //       // This is called when the user changes the date.
            //       onDateTimeChanged: (DateTime newDate) {
            //         setState(() => date = newDate);
            //       },
            //     )),
            //     // In this example, the date value is formatted manually. You can use intl package
            //     // to format the value based on user's locale settings.
            //     child: Text('$date'),
            //   ),
          ],
        ),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
              onPressed: (() {
                Navigator.pop(context);
              }),
              child: Text('Cancel', style: kTextStyles),
            ),
            ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25))),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(vertical: 15, horizontal: 50)),
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  textStyle: MaterialStateProperty.all(
                      TextStyle(fontSize: 28, color: Colors.black45))),
              onPressed: (() {}),
              child: Text(
                'Add',
                style: TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}






  //  CupertinoPicker.builder(
  //               itemExtent: 50,
  //               onSelectedItemChanged: ((value) {}),
  //               itemBuilder: ((context, index) {}))