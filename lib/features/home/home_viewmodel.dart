import 'package:flutter/material.dart';
import 'package:semaphoreci_flutter_demo/models/todo_item.dart';
import 'package:semaphoreci_flutter_demo/viewmodels/todo_viewmodel.dart';

/// doc'd
class HomeViewModel extends ChangeNotifier {
  /// doc'd
  HomeViewModel({
    this.todoViewModel,
  });

  /// doc'd
  final TodoViewModel? todoViewModel;

  /// doc'd
  List<TodoItem> get todos => todoViewModel != null ? todoViewModel!.todos : [];
}
