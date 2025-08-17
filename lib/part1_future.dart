// File: part1_future.dart

Future<String> getNameLater() {
  return Future.delayed(Duration(seconds: 2), () {
    return 'Dont change the code!';
  });
}

void main() async {
  print('Getting your name...');
  String message = await getNameLater();
  print(message);
  print('This runs while waiting...');
}

