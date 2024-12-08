class AppStrings {
  final _isDevMode = false;
  final _isRealDevice = true;

  String get appTitle => "Igbigi";

  String get success => "Success";

  String get apiBaseUrl =>
      _isDevMode ? (_isRealDevice ? realDevUrl : emulatorAddress) : prodUrl;

  String get emulatorAddress => 'http://10.0.2.2:$port';
  String get prodUrl => 'https://tdex-hackerton.vercel.app';
  String get realDevUrl => 'https://l6rfzblz-3500.uks1.devtunnels.ms/';
  String get port => '3500';

  final errorText = ErrorText();
}

class ErrorText {
  final errorOccured = 'An Error occured';
  final error = 'Error';
}

final appStrings = AppStrings();
