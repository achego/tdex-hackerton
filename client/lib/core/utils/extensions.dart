import 'package:client/global_exports.dart';
import 'dart:ui' as ui;

extension BuildContextX on BuildContext {
  double get paddingTop => MediaQuery.of(this).padding.top;
  Size get getSize => MediaQuery.of(this).size;
}

extension TextEditingControllerX on TextEditingController {
  String get trimedText => text.trim();
  String get lTrim => text.toLowerCase().trim();
}

extension WidgetX on Widget {
  SliverToBoxAdapter get toSliverBox => SliverToBoxAdapter(child: this);
  Padding get defPadX => Padding(
        padding: EdgeInsets.symmetric(horizontal: AppConstatnts.defPadding.w),
        child: this,
      );

  Opacity get disabled => Opacity(
        opacity: 0.5,
        child: this,
      );
}

extension NumX on num? {
  String get formatCurrency {
    final formatter = NumberFormat.currency(symbol: '', decimalDigits: 2);
    String formatedNumber = formatter.format(this ?? 0);
    final s = formatedNumber.split('.');
    if ((int.tryParse(s.last) ?? 0) == 0) {
      formatedNumber = s.first;
    }
    return formatedNumber;
  }
}

extension TextStyleX on TextStyle {
  double getTextHeight(String text) {
    final textPainter = TextPainter(
      text: TextSpan(text: text, style: copyWith(height: 0.8)),
      textDirection: ui.TextDirection.ltr,
    );
    textPainter.layout();
    return textPainter.height;
  }
}

extension MapX on Map {
  List<List<MapEntry<S, T>>> parition<S, T>(int chunkSize) {
    List<MapEntry<S, T>> entries =
        this.entries.toList() as List<MapEntry<S, T>>;
    List<List<MapEntry<S, T>>> chunks = [];

    for (int i = 0; i < entries.length; i += chunkSize) {
      int end =
          (i + chunkSize < entries.length) ? i + chunkSize : entries.length;
      chunks.add(entries.sublist(i, end));
    }

    return chunks;
  }
}

extension DateTimeX on DateTime? {
  String get formatDate =>
      this == null ? "" : DateFormat.yMMMEd().format(this!);
  String get timeOnly =>
      this == null ? "" : DateFormat('hh:mm a').format(this!);
}

extension StringX on String? {
  DateTime? get toDate {
    return DateTime.tryParse(this ?? "");
  }

  String get trimAll {
    return (this ?? '').replaceAll(' ', '');
  }

  String? get formatPhoneNumber {
    return this?.replaceAll(' ', '');
  }
}
