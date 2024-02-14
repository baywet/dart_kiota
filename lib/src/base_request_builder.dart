part of '../kiota_abstractions.dart';

/// Base class for all request builders.
abstract class BaseRequestBuilder<T extends BaseRequestBuilder<T>> {
  BaseRequestBuilder(
    this.requestAdapter,
    this.urlTemplate,
    this.pathParameters,
  );

  /// The path parameters of the request.
  Map<String, dynamic> pathParameters;

  /// The request adapter to use to execute the request.
  RequestAdapter requestAdapter;

  /// Url template to use to build the URL for the current request builder.
  String urlTemplate;

  /// Clones the current request builder.
  T clone();

  /// Clones the current request builder using [clone] and sets the given
  /// [template] as the url template.
  T withUrl(String template) => this.clone()..urlTemplate = template;
}
