import 'package:test/test.dart';
import '../bin/main.dart';

void main() {
  test('Test Case 1', () {
    expect(percentile([1,2,3,4,5]), [2,3,4,5,5,5,5]);
    expect(percentile([8, 6, 6, 20, 9, 1, 12, 16, 3, 16, 22, 2]), [3,8,16,20,22,22,22]);
  });
}
