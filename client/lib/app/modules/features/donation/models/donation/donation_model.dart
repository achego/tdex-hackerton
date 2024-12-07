// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class DonationModel {
  final String title;
  final String image_url;
  final String content_sub;
  final String content;
  DonationModel({
    required this.title,
    required this.image_url,
    required this.content_sub,
    required this.content,
  });

  DonationModel copyWith({
    String? title,
    String? image_url,
    String? content_sub,
    String? content,
  }) {
    return DonationModel(
      title: title ?? this.title,
      image_url: image_url ?? this.image_url,
      content_sub: content_sub ?? this.content_sub,
      content: content ?? this.content,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'image_url': image_url,
      'content_sub': content_sub,
      'content': content,
    };
  }

  factory DonationModel.fromMap(Map<String, dynamic> map) {
    return DonationModel(
      title: map['title'] as String,
      image_url: map['image_url'] as String,
      content_sub: map['content_sub'] as String,
      content: map['content'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory DonationModel.fromJson(String source) =>
      DonationModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'DonationModel(title: $title, image_url: $image_url, content_sub: $content_sub, content: $content)';
  }

  @override
  bool operator ==(covariant DonationModel other) {
    if (identical(this, other)) return true;

    return other.title == title &&
        other.image_url == image_url &&
        other.content_sub == content_sub &&
        other.content == content;
  }

  @override
  int get hashCode {
    return title.hashCode ^
        image_url.hashCode ^
        content_sub.hashCode ^
        content.hashCode;
  }
}
