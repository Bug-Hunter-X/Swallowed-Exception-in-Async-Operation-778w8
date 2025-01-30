# Swallowed Exception in Async Operation

This example demonstrates a common error in asynchronous Dart code where an exception is caught in a `try-catch` block within an `async` function, but the exception isn't rethrown or handled appropriately.  This leads to the future completing successfully even if an error occurred during the asynchronous operation, making it harder to detect and debug issues.

The `bug.dart` file shows the problematic code, and `bugSolution.dart` provides a corrected version.
