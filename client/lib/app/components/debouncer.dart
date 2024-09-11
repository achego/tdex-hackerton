import 'dart:async';
import 'package:client/global_exports.dart';

class CustomDebouncer {
  CustomDebouncer({required this.milliseconds});
  final int milliseconds;
  Timer? _timer;

  void run(VoidCallback action) {
    if (_timer?.isActive ?? false) {
      _timer?.cancel();
    }
    try {
      _timer = Timer(Duration(milliseconds: milliseconds), action);
    } catch (e) {
      logger(e, 'An error ocuured debouncing');
    }
  }
}
