import 'package:flutter/material.dart';

import '../Model/toDoListModel.dart';
import '../constants.dart';

class ToDoItem extends StatelessWidget {
  final ToDoModel todoitem;
  final onToDoChanged;
  final onDeleteItem;

  const ToDoItem({
    Key? key,
    required this.todoitem,
    required this.onToDoChanged,
    required this.onDeleteItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
               //! Logic Code
          // print('Clicked on Todo Item.');
          onToDoChanged(todoitem);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Colors.white,
        leading: Icon(
          todoitem.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: tdBlue,
        ),
        title: Text(
          todoitem.todoText!,
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,fontWeight: FontWeight.bold,
            decoration: todoitem.isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(vertical: 10),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: todoitem.isDone ? tdRed: Colors.blue,
            borderRadius: BorderRadius.circular(20),
          ),
          child: IconButton(
            color: Colors.white,
            iconSize: 18,
            icon: Icon(Icons.delete),
            onPressed: () {
              // print('Click her on delete icon');
              onDeleteItem(todoitem.id);
            },
          ),
        ),
      ),
    );
  }
}