# Unhandled Nested JSON Property Access in Dart

This example demonstrates a common error in Dart when dealing with JSON data: accessing nested properties without checking if they exist.  This can result in runtime exceptions if the expected nested structure is not present in the JSON response.

The `bug.dart` file contains the problematic code. The `bugSolution.dart` file shows how to safely access nested JSON properties.

## How to Reproduce

1. Run `bug.dart`. 
2. Observe the error when the `nested` or `property` key is missing from the JSON response.

## Solution

The `bugSolution.dart` file demonstrates how to prevent this error using null-aware operators and conditional checks before accessing nested properties.