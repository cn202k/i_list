library i_list;

import 'dart:collection';

import 'package:collection/collection.dart';

class IList<T> with IterableMixin<T> {
  final List<T> _items;

  const IList.empty() : _items = const [];

  const IList.reference(List<T> items)
      : _items = items;

  IList(Iterable<T> items) : _items = [...items];

  Iterator<T> get iterator => _items.iterator;

  T operator [](int index) =>
      (index >= 0) ? _items[index] : _items[length + index];

  T get first => _items.first;

  T get second => _items[1];

  T get third => _items[2];

  T get last => _items.last;

  int get length => _items.length;

  UnmodifiableListView<T> asListView() =>
      UnmodifiableListView<T>(_items);

  IList<T> transform(
      Function(List<T> items) transformer) {
    final items = [..._items];
    transformer(items);
    return IList(items);
  }

  @override
  String toString() => _items.toString();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is IList<T> &&
          (identical(_items, other._items) ||
              const DeepCollectionEquality()
                  .equals(other._items, _items)));

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(_items);
}
