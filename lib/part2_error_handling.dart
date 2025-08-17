// File: part1_future.dart

// Function 1: Returns the name after 2 seconds
Future<String> getNameLater() {
  return Future.delayed(Duration(seconds: 2), () {
    // Simulate success (you can throw an error here to test)
    return 'Dont change the code!';
    // throw Exception('Something went wrong while getting the name!');
  });
}

// Function 2: The only void function (acts like main)
void showMessage() async {
  print('Getting your name...');
  try {
    String message = await getNameLater();
    print(message);
  } catch (e) {
    print('Error: $e');
  }
  print('This runs while waiting...');
}

