void main() {
  // Переменные
  String name = 'Мир';
  int age = 2025;

  // Вывод в консоль
  print('Привет, $name!');
  print('Добро пожаловать в $age год.');

  // Списки
  List<int> numbers = [1, 2, 3, 4, 5];
  print('Список чисел: $numbers');

  // Цикл
  for (int number in numbers) {
    print('Квадрат числа $number: ${number * number}');
  }

  // Функции
  int add(int a, int b) {
    return a + b;
  }

  int result = add(5, 10);
  print('Результат сложения 5 и 10: $result');
}

