import 'dart:convert';

import 'package:client/app/data/models/user_model/user_model.dart';
import 'package:client/app/modules/sign_up_module/models/sign_up_dto.dart';
import 'package:client/core/theme/app_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  SharedPreferences? _prefs;
  Future init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  AuthSharedPrefs get auth => AuthSharedPrefs(prefs: _prefs);

// Getters <<<<<<<============================>>>>>>>>>
  AppThemeType get themeType {
    final theme = _prefs?.getString(_themeTypeKey) ?? "";
    return AppThemeType.fromString(theme);
  }

  bool get isBalanceShown {
    final isBalanceShown = _prefs?.getBool(_balanceKey) ?? false;
    return isBalanceShown;
  }

  UserModel? get currentUser {
    final user = _prefs!.getString(_currentUserKey);
    return (user == null || user.isEmpty)
        ? null
        : UserModel.fromJson(jsonDecode(user));
  }

// Setters <<<<<<<============================>>>>>>>>>
  Future<bool> setCurrentUser(UserModel? user) {
    return _prefs!.setString(
        _currentUserKey, user == null ? '' : jsonEncode(user.toJson()));
  }

  Future<bool> setThemeType(AppThemeType themeType) async {
    final isDone = await _prefs?.setString(_themeTypeKey, themeType.text);
    return isDone ?? false;
  }

  Future<bool> setIsBalanceShown(bool isBalanceShown) async {
    final isDone = await _prefs?.setBool(_balanceKey, isBalanceShown);
    return isDone ?? false;
  }
}

const String _themeTypeKey = 'themeType';
const String _balanceKey = '_balanceKey';
const String _currentUserKey = '_currentUserKey';

final localStorage = SharedPrefs();

class AuthSharedPrefs {
  AuthSharedPrefs({required SharedPreferences? prefs}) {
    _prefs = prefs;
  }

  late final SharedPreferences? _prefs;

// Getters <<<<<<<============================>>>>>>>>>
  String get token {
    final tok = _prefs?.getString(_tokenKey);
    return (tok == null || tok.isEmpty) ? '' : tok;
  }

  SignUpDto get signUpDto {
    final dto = _prefs?.getString(_signUpDtoKey);
    final dtoJson = json.decode(dto ?? '{}') as Map<String, dynamic>;
    if (dtoJson.keys.isEmpty) {
      return SignUpDto(currentStep: 0, data: SignUpDtoData());
    }
    return SignUpDto.fromMap(dtoJson);
  }

// // Setters <<<<<<<============================>>>>>>>>>
  Future setToken(String token) async {
    await _prefs?.setString(_tokenKey, token);
  }

  Future setSignupData(SignUpDto signUpDto) async {
    await _prefs?.setString(_signUpDtoKey, signUpDto.toJson());
  }
}

const String _tokenKey = 'token';
const String _signUpDtoKey = 'signUpDto';
