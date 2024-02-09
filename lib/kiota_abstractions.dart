/// Every project generated via [Kiota](https://github.com/microsoft/kiota)
/// needs an abstractions library to provide the necessary interfaces and
/// abstractions to interact with the generated code.
///
/// This library is not meant to be used directly, but rather to be used as a
/// dependency in the generated code.
library kiota_abstractions;

import 'dart:async';
import 'dart:collection';
import 'dart:math';
import 'dart:typed_data';

import 'package:std_uritemplate/std_uritemplate.dart';

part 'src/api_client_builder.dart';
part 'src/base_request_builder.dart';
part 'src/extensions/map_extensions.dart';
part 'src/extensions/request_information_extensions.dart';
part 'src/http_method.dart';
part 'src/multipart_body.dart';
part 'src/request_adapter.dart';
part 'src/request_headers.dart';
part 'src/request_information.dart';
part 'src/request_option.dart';
part 'src/response_handler.dart';
part 'src/response_handler_option.dart';
part 'src/serialization/parsable.dart';
part 'src/serialization/parsable_factory.dart';
part 'src/serialization/parse_node.dart';
part 'src/serialization/parse_node_factory.dart';
part 'src/serialization/parse_node_factory_registry.dart';
part 'src/serialization/serialization_writer.dart';
part 'src/serialization/serialization_writer_factory.dart';
part 'src/serialization/serialization_writer_factory_registry.dart';
