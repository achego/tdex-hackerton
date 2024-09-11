import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class SignUpDto {
  final int currentStep;
  final SignUpDtoData data;
  SignUpDto({
    required this.currentStep,
    required this.data,
  });

  SignUpDto copyWith({
    int? currentStep,
    SignUpDtoData? data,
  }) {
    return SignUpDto(
      currentStep: currentStep ?? this.currentStep,
      data: data ?? this.data,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentStep': currentStep,
      'data': data.toMap(),
    };
  }

  factory SignUpDto.fromMap(Map<String, dynamic> map) {
    return SignUpDto(
      currentStep: map['currentStep'] as int,
      data: SignUpDtoData.fromMap(map['data'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory SignUpDto.fromJson(String source) =>
      SignUpDto.fromMap(json.decode(source) as Map<String, dynamic>);
}

class SignUpDtoData {
  final String? firstName;
  final String? lastName;
  final String? userName;
  final String? email;
  final String? phone;
  final String? password;
  SignUpDtoData({
    this.firstName,
    this.lastName,
    this.userName,
    this.email,
    this.phone,
    this.password,
  });

  SignUpDtoData copyWith({
    String? firstName,
    String? lastName,
    String? userName,
    String? email,
    String? phone,
    String? password,
  }) {
    return SignUpDtoData(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      userName: userName ?? this.userName,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      password: password ?? this.password,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firstName': firstName,
      'lastName': lastName,
      'userName': userName,
      'email': email,
      'phone': phone,
      'password': password,
    };
  }

  factory SignUpDtoData.fromMap(Map<String, dynamic> map) {
    return SignUpDtoData(
      firstName: map['firstName'] != null ? map['firstName'] as String : null,
      lastName: map['lastName'] != null ? map['lastName'] as String : null,
      userName: map['userName'] != null ? map['userName'] as String : null,
      email: map['email'] != null ? map['email'] as String : null,
      phone: map['phone'] != null ? map['phone'] as String : null,
      password: map['password'] != null ? map['password'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory SignUpDtoData.fromJson(String source) =>
      SignUpDtoData.fromMap(json.decode(source) as Map<String, dynamic>);
}
