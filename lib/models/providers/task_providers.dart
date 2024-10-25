import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tla1_tla2/models/task.dart';

class TaskNotifier extends StateNotifier<List<Task>> {
  TaskNotifier() : super([]);

  void addTask(String title) {
    state = [...state, Task(title: title)];
  }

  void toggleTaskStatus(int index) {
    final task = state[index];
    task.toggleCompleted();
    state = [...state]; // Update state to trigger UI rebuild
  }

  void deleteTask(int index) {
    state = [...state]..removeAt(index); // Remove task and update state
  }
}
