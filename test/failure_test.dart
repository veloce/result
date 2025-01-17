import 'package:result/result.dart';
import 'package:test/test.dart';

import 'utils/mock_error.dart';

void main() {
  group('Failure', () {
    test('Should return _TestError', () {
      final failure = Failure<MockError>(const MockError(1));
      expect(failure.error.code, 1);
    });

    test('Two identical Failures should be equal', () {
      final failure1 = Failure<MockError>(const MockError(1));
      final failure2 = Failure<MockError>(const MockError(1));

      expect(failure1, failure2);
    });

    test('Two identical Failures should have the same hashCode', () {
      final failure1 = Failure<MockError>(const MockError(1));
      final failure2 = Failure<MockError>(const MockError(1));

      expect(failure1.hashCode, failure2.hashCode);
    });

    test('Can print to string', () {
      final failure = Failure<MockError>(const MockError(1));
      expect(failure.toString(), 'Failure: MockError(code: 1)');
    });
  });
}
