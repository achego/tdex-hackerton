const String baseImagePath = 'assets/images/';
const String baseIconImagePath = 'assets/icons/';
const String baseIconSvgPath = 'assets/svg/';
const String baseLottiePath = 'assets/lottie/';
const String baseGifPath = 'assets/gifs/';

// extension function to choose image file format
extension ImageExtension on String {
  String get svg => '$baseIconSvgPath$this.svg';
  String get png => '$baseImagePath$this.png';
  String get jpeg => '$baseImagePath$this.jpeg';
  String get ipng => '$baseIconImagePath$this.png';
  String get json => '$baseLottiePath$this.json';
  String get gif => '$baseGifPath$this.gif';
}

class AppImages {
  static String get userOne => '1'.png;
  static String get userTwo => '2'.png;
  static String get userThree => '4'.png;
  static String get userFour => '5'.png;
  static String get onB => 'onB'.png;
  static String get pfi2 => 'pfi1'.png;
  static String get pfi1 => 'pfi2'.png;
  static String get logo => 'logo'.png;
}

class AppGif {
  // static String get splashBlob => 'splash_blob'.gif;
}

class AppIconImages {
  // static String get splashBlob => 'splash_blob'.ipng;
}

class AppIconSvgs {
  static String get back => 'back'.svg;
  // static String get buyAirtime => 'buy_airtime'.svg;
  // static String get buyData => 'buy_data'.svg;
  // static String get caratDown => 'carat_down'.svg;
  static String get caratRight => 'carat_right'.svg;
  static String get editPen => 'edit_pen'.svg;
  // static String get expense => 'expense'.svg;
  static String get eyeClosed => 'eye_closed'.svg;
  static String get eyeOpen => 'eye_open'.svg;
  static String get failed => 'failed'.svg;
  static String get home => 'home'.svg;
  static String get income => 'income'.svg;
  // static String get notificationFilled => 'notification_filled'.svg;
  static String get notification => 'notification'.svg;
  static String get otherUtilities => 'other_utilities'.svg;
  // static String get phoneBook => 'phone_book'.svg;
  static String get profile => 'profile'.svg;
  static String get receive => 'receive'.svg;
  // static String get search => 'search'.svg;
  static String get send => 'send'.svg;
  static String get success => 'succes'.svg;
  static String get swap => 'swap'.svg;
  static String get subscription => 'subscription'.svg;
  static String get transactions => 'transactions'.svg;
  static String get logout => 'logout'.svg;
  static String get delete => 'delete'.svg;
  static String get donate => 'donate'.svg;
}

class AppLottie {
  // static String get splashBlob => 'splash_blob'.json;
}
