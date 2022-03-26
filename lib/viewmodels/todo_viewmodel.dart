import 'package:flutter/material.dart';
import 'package:semaphoreci_flutter_demo/models/todo_item.dart';

/// doc'd
class TodoViewModel extends ChangeNotifier {
  /// doc'd
  List<TodoItem> todos = [];

  /// doc'd
  void addItemToList(TodoItem item) {
    todos.add(item);
    notifyListeners();
  }

  /// doc'd
  void updateItem(TodoItem item) {
    final i = todos.indexWhere((t) => t.id == item.id);
    if (i != -1) todos[i] = item;
    notifyListeners();
  }

  /// doc'd
  void deleteItemById(int id) {
    todos.removeWhere((t) => t.id == id);
    notifyListeners();
  }

  /// doc'd
  void deleteAllItems() {
    todos.clear();
    notifyListeners();
  }
}
