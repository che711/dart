// Определение класса Task
class Task {
  String title;
  bool isCompleted;

  Task(this.title, {this.isCompleted = false});

  void complete() {
    isCompleted = true;
  }

  @override
  String toString() {
    return '$title - ${isCompleted ? "Завершено" : "Не завершено"}';
  }
}

// Асинхронная функция для загрузки задач
Future<List<Task>> fetchTasks() async {
  print('Загрузка задач...');
  await Future.delayed(Duration(seconds: 2)); // Эмуляция задержки
  return [
    Task('Купить продукты'),
    Task('Прочитать книгу', isCompleted: true),
    Task('Сделать зарядку')
  ];
}

void main() async {
  // Получение списка задач
  List<Task> tasks = await fetchTasks();
  print('Список задач:');
  for (var task in tasks) {
    print(task);
  }

  // Завершение задачи
  print('\nЗавершаем первую задачу...');
  tasks[0].complete();
  print(tasks[0]);
}
