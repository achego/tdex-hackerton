import 'package:client/core/utils/globals.dart';
import 'package:client/core/utils/logger.dart';
import 'package:client/global_exports.dart';

import 'aaexp.clients.dart';

class CustomResponse<T> {
  final T? data;
  final String message;
  // final String? submessage;
  final int? statusCode;
  final bool? customOkCondition;

  CustomResponse(
      {this.data,
      required this.message,
      // this.submessage,
      this.statusCode,
      this.customOkCondition});
  bool get isOk =>
      customOkCondition ??
      ((statusCode ?? 500) >= 200 && (statusCode ?? 500) <= 280);

  toJson() {
    return {
      'data': data,
      'message': message,
      // 'submessage': submessage,
      'statusCode': statusCode,
      'isOk': isOk,
    }.toString();
  }

  CustomResponse<U> copyWith<U>({
    required U data,
    String? message,
    int? statusCode,
    bool? customOkCondition,
  }) {
    return CustomResponse<U>(
      message: message ?? this.message,
      customOkCondition: customOkCondition ?? this.customOkCondition,
      data: data,
      statusCode: statusCode ?? this.statusCode,
    );
  }

  static const socketExceptionMsg = 'Please check your internet connection';

  static const httpExceptionMsg = 'Oops! An error occurred. Please try again';

  static const formatExceptionMsg =
      'Oops! A cast error occurred. Please try again';

  factory CustomResponse.fromError({dynamic error}) {
    if (error is SocketException) {
      return CustomResponse(message: socketExceptionMsg);
    }
    if (error is AppException) {
      logger(error.message, 'App Exception');
      return CustomResponse(message: error.message);
    }

    if (error is DioException) {
      logger(error.response?.data, 'The Error Data');
      logger(error.response?.realUri, 'The Real Uri');
      logger(error.message, 'Dio Error');

      if (error.response?.statusCode == 401) {
        appController.logOut(canPop: true);
      }
      String? errorMessage;
      if (error.response != null) {
        if (error.response!.data is Map) {
          if ((error.response!.data as Map).containsKey('message')) {
            errorMessage = error.response!.data['message'];
          }
        }
      }
      logger(error.type, 'The error type');
      switch (error.type) {
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
          return CustomResponse(
            customOkCondition: false,
            message: errorMessage ?? socketExceptionMsg,
          );
        case DioExceptionType.badResponse:
          return CustomResponse(
            customOkCondition: false,
            message: errorMessage ?? httpExceptionMsg,
          );
        case DioExceptionType.badCertificate:
          return CustomResponse(
            customOkCondition: false,
            message: errorMessage ?? httpExceptionMsg,
          );
        case DioExceptionType.cancel:
          return CustomResponse(
            customOkCondition: false,
            message: errorMessage ?? httpExceptionMsg,
          );
        case DioExceptionType.connectionError:
          return CustomResponse(
            customOkCondition: false,
            message: errorMessage ?? httpExceptionMsg,
          );
        case DioExceptionType.unknown:
          if (error is SocketException) {
            return CustomResponse(
              customOkCondition: false,
              message: errorMessage ?? socketExceptionMsg,
            );
          } else if (error is FormatException) {
            return CustomResponse(
              customOkCondition: false,
              message: errorMessage ?? formatExceptionMsg,
            );
          } else if (error is HttpException) {
            return CustomResponse(
              customOkCondition: false,
              message: errorMessage ?? httpExceptionMsg,
            );
          } else {
            return CustomResponse(
              customOkCondition: false,
              message: errorMessage ?? httpExceptionMsg,
            );
          }
      }
    }

    logger(error.toString(), 'Error not handled');

    return CustomResponse(message: error.toString());
  }
}
