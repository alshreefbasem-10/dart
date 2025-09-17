List<int> list = [10, 20, 30, 40];
var student = {'name': 'Ali', 'age': 22, 'grade': 'A'};

void main() {
  listOperations();
  studentOperations();
}

void listOperations() {
  print("List elements:");
  for (var item in list) {
    print(item);
  }
}

void studentOperations() {
  print("Student Information:");
  student.forEach((key, value) {
    print("$key: $value");
  });
}
