import 'package:kiota_abstractions/kiota_abstractions.dart';
import 'package:test/test.dart';

void main() {
  group('HttpHeaders', () {
    test('keys are case-insensitive', () {
      final headers = HttpHeaders()..put('content-type', 'application/json');

      expect(headers.length, 1);
      expect(headers['content-type'], {'application/json'});
      expect(headers['Content-Type'], {'application/json'});

      headers.put('Content-Type', 'application/xml');

      expect(headers.length, 1);
      expect(headers['content-type'], {'application/xml'});
      expect(headers['Content-Type'], {'application/xml'});

      // should not get added as a new key
      headers.putIfAbsent('CONTENT-TYPE', () => {'application/json'});

      expect(headers.length, 1);
      expect(headers['CONTENT-TYPE'], {'application/xml'});
    });

    test('preserves original case', () {
      final headers = HttpHeaders();

      headers['Content-Type'] = {'application/json'};

      expect(headers.keys.first, 'Content-Type');

      // This should overwrite the previous key
      headers['content-type'] = {'application/xml'};

      expect(headers.keys.first, 'content-type');
    });

    test('only the first value is used for single value headers', () {
      final headers = HttpHeaders();

      headers['Content-Type'] = {'application/json', 'application/xml'};
      headers['Content-Encoding'] = {'gzip', 'deflate'};
      headers['Content-Length'] = {'100', '200'};

      expect(headers['Content-Type'], {'application/json'});
      expect(headers['Content-Encoding'], {'gzip'});
      expect(headers['Content-Length'], {'100'});
    });
  });
}
