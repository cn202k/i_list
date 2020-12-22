# i_list

A simple immutable list (dart). See `lib/i_list.dart`.

## How to use

```dart
    final list = IList([1, 2, 3, 4, 5]);
    final list2 = list.transform((it) {
      it.add(6);
      it.remove(1);
    });
    print(list); // [1, 2, 3, 4, 5]
    print(list2); // [2, 3, 4, 5, 6]
```

# License
The source code is licensed MIT. The website content is licensed CC BY 4.0,see LICENSE.

# Link
- [Available on pub.dev](https://pub.dev/packages/i_list)
