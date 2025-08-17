// File: part3_stream_numbers.dart

// Function 1: Stream that yields numbers
Stream<int> numberStream() async* {
  yield 1;
  await Future.delayed(Duration(seconds: 1));
  yield 2;
  await Future.delayed(Duration(seconds: 1));
  yield 3;
}

// Function 2: The only void function (acts like main)
void showNumbers() {
  numberStream().listen(
    (num) {
      print('New number: $num');
    },
    onError: (e) {
      print('Error: $e');
    },
    onDone: () {
      print('Stream finished.');
    },
  );

  print('Listening to numbers...');
}

