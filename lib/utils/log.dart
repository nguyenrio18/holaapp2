import 'package:ansicolor/ansicolor.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

void printInfo(String label, dynamic message) {
  var pen = AnsiPen()..green();
  print(pen('??? $label: $message'));
}

void printError(String label, dynamic error) {
  var pen = AnsiPen()..red();
  if (error is PlatformException && error.code != null) {
    print(pen('!!! $label [${error.code}]: $error'));
  } else {
    print(pen('!!! $label: $error'));
  }
}

void showInSnackBar(
    String value, bool isError, GlobalKey<ScaffoldState> scaffoldKey) {
  scaffoldKey.currentState.hideCurrentSnackBar();
  scaffoldKey.currentState.showSnackBar(SnackBar(
    content: Text(
      value,
      style: isError ? const TextStyle(color: Colors.red) : null,
    ),
  ));
}

enum ErrorCode { undeterminedUser }

void showInSnackBarContactAdmin(
    ErrorCode errorCode, bool isError, GlobalKey<ScaffoldState> scaffoldKey) {
  switch (errorCode) {
    case ErrorCode.undeterminedUser:
      showInSnackBar(
          'Không xác định được dữ liệu người dùng, xin vui lòng liên hệ người quản trị.',
          true,
          scaffoldKey);
      break;
    default:
  }
}
