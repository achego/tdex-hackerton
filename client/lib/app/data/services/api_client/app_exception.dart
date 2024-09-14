import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class AppException implements Exception {
  const AppException({
    required this.message,
    this.data,
  });

  final String message;
  final dynamic data;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': message,
      'data': data,
    };
  }

  factory AppException.fromMap(Map<String, dynamic> map) {
    return AppException(
      message: map['message'] as String,
      data: map['data'] as dynamic,
    );
  }

  String toJson() => json.encode(toMap());

  factory AppException.fromJson(String source) =>
      AppException.fromMap(json.decode(source) as Map<String, dynamic>);

  AppException copyWith({
    String? message,
    dynamic data,
  }) {
    return AppException(
      message: message ?? this.message,
      data: data ?? this.data,
    );
  }

  @override
  String toString() => 'AppException(message: $message, data: $data)';

  @override
  bool operator ==(covariant AppException other) {
    if (identical(this, other)) return true;

    return other.message == message && other.data == data;
  }

  @override
  int get hashCode => message.hashCode ^ data.hashCode;
}
