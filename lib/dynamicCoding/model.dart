// ignore_for_file: camel_case_types, unused_import

import 'package:flutter/material.dart';

class ToDo {
  String? id;
  String? toDoText;
  bool? isDone;
  ToDo({
    required this.id,
    required this.toDoText,
    this.isDone = false,
  });
  static List<ToDo> todoList() {
    // creating an array to render the items
    return [
      ToDo(id: '01', toDoText: 'Make the bed', isDone: false),
      ToDo(id: '02', toDoText: 'Clean the room', isDone: false),
      ToDo(id: '03', toDoText: 'Drink cup of tea', isDone: true),
      ToDo(id: '04', toDoText: 'Do workout', isDone: false),
      ToDo(id: '05', toDoText: 'Start your work', isDone: true),
    ];
  }
}
