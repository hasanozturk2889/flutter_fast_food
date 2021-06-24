import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_fast_food/api/api.dart';
import 'package:flutter_fast_food/model/todo.dart';

class TodoListApp extends StatefulWidget {
  @override
  _TodoListAppState createState() => _TodoListAppState();
}

class _TodoListAppState extends State<TodoListApp> {
  List<Todo> list = new List<Todo>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(

        title: Text(
          "Görevler",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
            fontFamily: "slabo",
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.orangeAccent,
      ),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, i) {
          return ListTile(
            title: Text(
              list[i].title,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                fontFamily: "slabo",
                color: Colors.white,
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    getTodos();
  }

  getTodos() {
    Api.getTodos().then((response) {
      Iterable jsonList = json.decode(response.body);
      this.list = jsonList.map((todo) => Todo.fromJson(todo)).toList();
    });
  }
}
