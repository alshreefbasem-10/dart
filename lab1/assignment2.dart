import 'dart:io';

void main() {
  checkGrade();
  even();
  weekday();
}

void checkGrade() {
  stdout.write("Enter grade (0-100): ");
  int grade = int.parse(stdin.readLineSync()!);

  if (grade >= 90 && grade <= 100) {
    print("A");
  } else if (grade >= 80 && grade <= 89) {
    print("B");
  } else if (grade >= 70 && grade <= 79) {
    print("C");
  } else if (grade < 70 && grade >= 0) {
    print("F");
  } else {
    print("Invalid grade!");
  }
}

void even() {
  for (int i = 1; i <= 10; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }
}

void weekday() {
  stdout.write("Enter a number (1-7) for the day of the week: ");
  int day = int.parse(stdin.readLineSync()!);

  switch (day) {
    case 1:
      print("saturday");
      break;
    case 2:
      print("sunday");
      break;
    case 3:
      print("monday");
      break;
    case 4:
      print("tuesday");
      break;
    case 5:
      print("wednesday");
      break;
    case 6:
      print("thursday");
      break;
    case 7:
      print("friday");
      break;
    default:
      print("Invalid input!");
  }
}
