```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonData = jsonDecode(response.body);
      //  This line might throw an error if jsonData is not a Map
      final String name = jsonData['name'];  
      print('Name: $name');
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    // Without rethrowing, the error is swallowed and the future completes successfully even if data failed to load.
  }
}
```