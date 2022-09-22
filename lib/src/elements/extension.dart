part of element;

/// {@template extension}
/// Configuration for defining an extension.
/// {@endtemplate}
class Extension extends Element {
  /// {@macro extension}
  const Extension({
    required this.on,
    this.name,
    this.fields = const [],
    this.methods = const [],
    this.docs = const [],
    this.annotations = const [],
  });

  /// The class on which this extension should be defined.
  final Reference on;

  /// The name of this extension.
  final String? name;

  /// The fields of this extension.
  final List<Field> fields;

  /// The methods of this extension.
  final List<Method> methods;

  /// The documentation for this extension.
  final List<Docs> docs;

  /// The annotations of this extension.
  final List<Annotation> annotations;

  @override
  List<Object?> get props {
    return [on, name, fields, methods, docs, annotations];
  }
}
