import 'dart:convert';
import 'dart:developer';
import 'package:flutter/foundation.dart';

void logger(
  dynamic text,
  String title, {
  LoggerLevel level = LoggerLevel.debug,
  int maxChars = 3000,
  StackTrace? stackTrace,
  DateTime? date,
  bool showAllTrace = false,
}) {
  if (kDebugMode) {
    String trace = (stackTrace ?? StackTrace.current).toString();
    if (!showAllTrace) {
      final List<String> traceSplit =
          (stackTrace ?? StackTrace.current).toString().split('\n');
      if (traceSplit.length >= 5) {
        trace = traceSplit[3];
      }
      if (traceSplit.isNotEmpty && stackTrace != null) {
        trace = traceSplit[0];
      }
      if (trace.contains('>')) {
        if (trace.split('>').length >= 2) {
          trace = trace.split('>')[1];
        }
      }
    }
    final now = date ?? DateTime.now();
    final time = '${now.hour}:${now.minute}:${now.second}';
    final filteredText = _filterFormatText(text, maxChars);
    final filteredTitle = title.isNotEmpty
        ? '${LoggerTextColor.red.applyToText(title.toUpperCase())} ==='
        : '';

    log(
      'rqas: ${LoggerTextColor.magenta.applyToText(time)} - $filteredTitle ${level.textColor.applyToText(filteredText)} ${RqLoggerColorEffect.dim.applyToText(trace)}',
    );
    if ((text.toString().length + title.length) >= 500) {
      log('rqas: ${RqLoggerColorEffect.dim.applyToText(trace)}');
    }
  }
}

String _filterFormatText(dynamic text, int maxChars) {
  String textT = text.toString();

  if (text is Map) {
    textT = jsonEncode(text);
  }

  return textT.split('').take(maxChars).join();
  // return textT.length > maxChars ? textT.substring(0, maxChars) : textT;
}

void logException(
  Object error,
  StackTrace trace, {
  dynamic message,
  int maxChars = 3000,
  bool showAllTrace = true,
}) {
  logger(
    message ?? error,
    'Exception',
    level: LoggerLevel.error,
    stackTrace: trace,
    maxChars: maxChars,
    showAllTrace: showAllTrace,
  );
}

enum LoggerLevel {
  debug,
  info,
  warning,
  error,
  fatal,
  verbose;

  LoggerTextColor get textColor {
    return switch (this) {
      LoggerLevel.debug => LoggerTextColor.yellow,
      LoggerLevel.info => LoggerTextColor.blue,
      LoggerLevel.warning => LoggerTextColor.yellow,
      LoggerLevel.error => LoggerTextColor.red,
      LoggerLevel.fatal => LoggerTextColor.red,
      LoggerLevel.verbose => LoggerTextColor.white,
    };
  }
}

const _colorReset = '\x1b[0m';

enum LoggerTextColor {
  black(value: '\x1b[30m'),
  red(value: '\x1b[31m'),
  green(value: '\x1b[32m'),
  yellow(value: '\x1b[33m'),
  blue(value: '\x1b[34m'),
  magenta(value: '\x1b[35m'),
  cyan(value: '\x1b[36m'),
  white(value: '\x1b[37m');

  const LoggerTextColor({required this.value});
  final String value;

  String applyToText(String text) {
    return '$value$text$_colorReset';
  }
}

enum LoggerBackgroundColor {
  black(value: '\x1b[40m'),
  red(value: '\x1b[41m'),
  green(value: '\x1b[42m'),
  yellow(value: '\x1b[43m'),
  blue(value: '\x1b[44m'),
  magenta(value: '\x1b[45m'),
  cyan(value: '\x1b[46m'),
  white(value: '\x1b[47m');

  const LoggerBackgroundColor({required this.value});
  final String value;

  String applyToText(String text) {
    return '$value$text$_colorReset';
  }
}

enum RqLoggerColorEffect {
  // reset(value: '\x1b[0m'),
  bright(value: '\x1b[1m'),
  dim(value: '\x1b[2m'),
  underscore(value: '\x1b[4m'),
  blink(value: '\x1b[5m'),
  blinkFast(value: '\x1b[6m'),
  reverse(value: '\x1b[7m'),
  hidden(value: '\x1b[8m');

  const RqLoggerColorEffect({required this.value});
  final String value;

  String applyToText(String text) {
    return '$value$text$_colorReset';
  }
}

// Custom Colors
// .
// \x1b[38;2;r;g;bm - foreground eg \x1b[38;2;0;255;0m == green
// \x1b[48;2;r;g;bm - background

// void logger(dynamic text, [dynamic title, int maxChars = 3000]) {
//   if (kDebugMode) {
//     String trace = StackTrace.current.toString().split('\n')[1];
//     if (trace.contains('>')) {
//       if (trace.split('>').length >= 2) {
//         trace = trace.split('>')[1];
//       }
//     }
//     final now = DateTime.now();
//     final time = '${now.hour}:${now.minute}:${now.second}';

//     if (title != null) {
//       log(
//         'bPanther: \x1B[35m$time\x1B[0m - \x1B[31m${title.toString().toUpperCase()}\x1B[0m === \x1b[33m${text.toString().length > maxChars ? text.toString().substring(0, maxChars) : text.toString()}\x1B[0m \x1b[2m$trace\x1B[0m',
//       );
//       if ((text.toString().length + title.toString().length) >= 500) {
//         log('bPanther: \x1b[31m$trace\x1B[0m');
//       }
//     } else {
//       log(
//         'bPanther: \x1B[35m$time\x1B[0m - \x1b[33m${text.toString().length > maxChars ? text.toString().substring(0, maxChars) : text.toString()}\x1B[0m \x1b[2m$trace\x1B[0m',
//       );
//       if ((text.toString().length + title.toString().length) >= 500) {
//         log('bPanther: \x1b[31m$trace\x1B[0m');
//       }
//     }
//   }
// }

void loggerR() {
  if (kDebugMode) {
    String trace = StackTrace.current.toString().split('\n')[1];
    if (trace.contains('>')) {
      if (trace.split('>').length >= 2) {
        trace = trace.split('>')[1];
      }
    }
    final now = DateTime.now();
    final time = '${now.hour}:${now.minute}:${now.second}';

    // if()
    const splitText = '(';
    log(
      ' \x1b[46m bPantherR: \x1B[35m$time - \x1B[31mRouting To ==>> \x1b[33m${trace.split(splitText)[0]} \x1B[0m \x1b[2m$trace \x1B[0m ',
    );
  }
}





// Colors reference
// You can use the following as so:
// console.log(colorCode, data);
// console.log(`${colorCode}some colorful text string${resetCode} rest of string in normal color`);
// 
// ... and so on.

// export const reset = "\x1b[0m"
// export const bright = "\x1b[1m"
// export const dim = "\x1b[2m"
// export const underscore = "\x1b[4m"
// export const blink = "\x1b[5m"
// export const blink fast = "\x1b[6m"
// export const reverse = "\x1b[7m"
// export const hidden = "\x1b[8m"

// export const black = "\x1b[30m"
// export const red = "\x1b[31m"
// export const green = "\x1b[32m"
// export const yellow = "\x1b[33m"
// export const blue = "\x1b[34m"
// export const magenta = "\x1b[35m"
// export const cyan = "\x1b[36m"
// export const white = "\x1b[37m"

// export const BGblack = "\x1b[40m"
// export const BGred = "\x1b[41m"
// export const BGgreen = "\x1b[42m"
// export const BGyellow = "\x1b[43m"
// export const BGblue = "\x1b[44m"
// export const BGmagenta = "\x1b[45m"
// export const BGcyan = "\x1b[46m"
// export const BGwhite = "\x1b[47m"


// .
// .
// .
// Custom Colors
// .
// .
// .
// .
// \x1b[38;2;r;g;bm - foreground eg \x1b[38;2;0;255;0m == green
// \x1b[48;2;r;g;bm - background