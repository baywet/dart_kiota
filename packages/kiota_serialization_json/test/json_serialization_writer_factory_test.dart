import 'dart:convert';
import 'package:kiota_abstractions/kiota_abstractions.dart';
import 'package:kiota_serialization_json/kiota_serialization_json.dart';
import 'package:test/test.dart';

void main() {
  group('JsonSerializationWriterFactory', () {
    test('getWriterForJsonContentType', () {
      final factory = JsonSerializationWriterFactory();
      final jsonWriter =
          factory.getSerializationWriter(factory.validContentType);
      expect(jsonWriter, isNotNull);
    });

    test('testThrowsExceptionForInvalidContentType', () {
      const streamContentType = 'application/octet-stream';
      final factory = JsonSerializationWriterFactory();
      expect(() => factory.getSerializationWriter(streamContentType),
          throwsArgumentError);
    });
  });
}
