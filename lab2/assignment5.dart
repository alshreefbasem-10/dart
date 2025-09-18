import 'dart:async';

void main() {
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

class MyIterator implements Iterator<int> {
  final List<int> _data;
  int _index = -1;

  MyIterator(this._data);

  @override
  int get current => _data[_index];

  @override
  bool moveNext() {
    _index++;
    return _index < _data.length;
  }
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
