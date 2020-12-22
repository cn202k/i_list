import 'package:test/test.dart';

import 'package:i_list/i_list.dart';

void main() {
  test('ImmutableList.equals()', () {
    final list = IList([1, 2, 3, 4, 5]);
    expect(list == list, true);
    final list2 = IList([1, 2, 3, 4, 5]);
    expect(list == list2, true);
    expect(list.hashCode == list2.hashCode, true);
    final list3 = IList([1, 2, 3, 4]);
    expect(list == list3, false);
    expect(list.hashCode == list3.hashCode, false);
  });
  test('ImmutableList.transform()', () {
    final list = IList([1, 2, 3, 4, 5]);
    final list2 = list.transform((it) {
      it.add(6);
      it.remove(1);
    });
    expect(list, IList([1, 2, 3, 4, 5]));
    expect(list2, IList([2, 3, 4, 5, 6]));
  });
}
