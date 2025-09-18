import 'dart:async';

void main() {
  //iterable example
  print('Even numbers up to 10: ${evenNumbers(10).toList()}');

  //function examples
  print('Add: ${add(3, 5)}');
  print('Multiply: ${multiply(4, 6)}');
  print('Operate (Add): ${operate(2, 3, add)}');
  print('Operate (Multiply): ${operate(2, 3, multiply)}');

  //future example and async-await
  fetchData().then((data) {
    print('Future data: $data');
  });

  mainAsync();
  //stream example
  var myStream = MyStream();
  myStream.stream.listen((value) {
    print('Stream value: $value');
  });

  //null safety example
  String? nullableString = getNullableString(true);
  print('Nullable string: $nullableString');
}

//iterable even numbers
Iterable<int> evenNumbers(int n) sync* {
  for (int i = 0; i <= n; i += 2) {
    yield i;
  }
}

//normal function&arrow function&anonymous function
int add(int a, int b) => a + b;
var multiply = (int a, int b) => a * b;
//heigher order function
int operate(int a, int b, int Function(int, int) operation) {
  return operation(a, b);
}

//stream

class MyStream {
  final StreamController<int> _controller = StreamController<int>();

  MyStream() {
    _startEmitting();
  }

  Stream<int> get stream => _controller.stream;

  void _startEmitting() async {
    for (int i = 0; i < 5; i++) {
      await Future.delayed(Duration(seconds: 1));
      _controller.add(i);
    }
    await Future.delayed(Duration(seconds: 1));
    _controller.close();
  }
}

//future
Future<int> fetchData() async {
  await Future.delayed(Duration(seconds: 2));
  return 42;
}

//async-await
Future<void> mainAsync() async {
  print('Fetching data...');
  int data = await fetchData();
  print('Data fetched: $data');
}

//null safety
String? getNullableString(bool returnNull) {
  return returnNull ? null : "Hello, Dart!";
}
