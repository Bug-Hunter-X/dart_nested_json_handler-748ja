```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);

      // Safely access nested property
      final nestedValue = jsonData['nested']?['property'];

      if (nestedValue != null) {
        // Process nestedValue
        print('Nested value: $nestedValue');
      } else {
        print('Nested property not found');
      }
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```