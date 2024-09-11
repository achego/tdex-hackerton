import 'dart:convert';

class BalanceModel {
  final num balance;
  final String? updatedAt;
  BalanceModel({
    required this.balance,
    this.updatedAt,
  });

  factory BalanceModel.init() => BalanceModel(balance: 0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'balance': balance,
      'updated_at': updatedAt,
    };
  }

  factory BalanceModel.fromMap(Map<String, dynamic> map) {
    return BalanceModel(
      balance: map['balance'] as num,
      updatedAt: map['updated_at'],
    );
  }

  String toJson() => json.encode(toMap());

  factory BalanceModel.fromJson(String source) =>
      BalanceModel.fromMap(json.decode(source) as Map<String, dynamic>);

  BalanceModel copyWith({
    num? balance,
    String? updatedAt,
  }) {
    return BalanceModel(
      balance: balance ?? this.balance,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
