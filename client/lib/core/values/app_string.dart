class AppStrings {
  final _isDevMode = true;
  String get appTitle => "Igbigi";

  String get success => "Success";

  String get apiBaseUrl => _isDevMode ? emulatorAddress : prodUrl;

  String get emulatorAddress => 'http://10.0.2.2:$port';
  String get prodUrl => 'https://tdex-hackerton.vercel.app';
  String get port => '3500';

  final errorText = ErrorText();
}

class ErrorText {
  final errorOccured = 'An Error occured';
  final error = 'Error';
}

final appStrings = AppStrings();
