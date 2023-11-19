class ToDoModel {
  String? id;
  String? todoText;
  bool isDone;

  ToDoModel({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDoModel> todoList() {
    return [
      ToDoModel(id: '01', todoText: 'Morning Exercises', isDone: true ),
      ToDoModel(id: '02', todoText: 'Show Gmail Messages', isDone: true ),
      ToDoModel(id: '03', todoText: 'Team Meeting', ),
      ToDoModel(id: '04', todoText: 'Study Something for one hour', ),
      ToDoModel(id: '05', todoText: 'Work on mobile apps for 2 hour', ),
      ToDoModel(id: '06', todoText: 'Dinner and play Games', ),
    ];
  }
}