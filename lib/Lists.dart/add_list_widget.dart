import 'package:flutter/cupertino.dart';
import 'package:to_do/containers.dart';

class CreateList {
  List<TodoContainers> addNewList = [
    TodoContainers(todoText: 'Buy money'),
    TodoContainers(todoText: 'Earn money'),
    TodoContainers(todoText: 'Be independent'),
  ];
  int get listCount {
    return addNewList.length;
  }

  void addToCreateList(String newTodoText) {
    final newList = TodoContainers(todoText: newTodoText);
    addNewList.add(newList);
  }
}
