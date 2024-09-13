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
  final String? fullName;
  final String? userName;
  final String? email;
  final String? phone;
  final String? password;
  final String? country;
  SignUpDtoData({
    this.fullName,
    this.userName,
    this.email,
    this.phone,
    this.password,
    this.country,
  });

  SignUpDtoData copyWith({
    String? fullName,
    String? userName,
    String? email,
    String? phone,
    String? password,
    String? country,
  }) {
    return SignUpDtoData(
      fullName: fullName ?? this.fullName,
      userName: userName ?? this.userName,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      password: password ?? this.password,
      country: country ?? this.country,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fullName': fullName,
      'userName': userName,
      'email': email,
      'phone': phone,
      'password': password,
      'country': country,
    };
  }

  factory SignUpDtoData.fromMap(Map<String, dynamic> map) {
    return SignUpDtoData(
      fullName: map['fullName'] != null ? map['fullName'] as String : null,
      userName: map['userName'] != null ? map['userName'] as String : null,
      email: map['email'] != null ? map['email'] as String : null,
      phone: map['phone'] != null ? map['phone'] as String : null,
      password: map['password'] != null ? map['password'] as String : null,
      country: map['country'] != null ? map['country'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory SignUpDtoData.fromJson(String source) =>
      SignUpDtoData.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'SignUpDtoData(fullName: $fullName, userName: $userName, email: $email, phone: $phone, password: $password, country: $country)';
  }

  @override
  bool operator ==(covariant SignUpDtoData other) {
    if (identical(this, other)) return true;
  
    return 
      other.fullName == fullName &&
      other.userName == userName &&
      other.email == email &&
      other.phone == phone &&
      other.password == password &&
      other.country == country;
  }

  @override
  int get hashCode {
    return fullName.hashCode ^
      userName.hashCode ^
      email.hashCode ^
      phone.hashCode ^
      password.hashCode ^
      country.hashCode;
  }
}
