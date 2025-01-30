```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      //Added a check if jsonData is a Map and if it contains 'name'
      final String name = jsonData is Map && jsonData.containsKey('name') ? jsonData['name'] : 'Name not found'; 
      print('Name: $name');
    } else {
      // Re-throwing to propagate the error.
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Re-throwing the error to make it visible to the caller.
    rethrow; // or print('Error: $e'); and then throw e; 
  }
}
```