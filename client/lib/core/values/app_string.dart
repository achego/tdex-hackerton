class AppStrings {
  final _isDevMode = true;
  String get appTitle => "Igbigi";

  String get success => "Success";

  String get apiBaseUrl => _isDevMode ? emulatorAddress : prodUrl;

  String get emulatorAddress => 'http://10.0.2.2:$port/api/v1';
  String get prodUrl => 'https://panther-server.vercel.app/api/v1';
  String get port => '3500';

  final errorText = ErrorText();
}

class ErrorText {
  final errorOccured = 'An Error occured';
  final error = 'Error';
}

final appStrings = AppStrings();
