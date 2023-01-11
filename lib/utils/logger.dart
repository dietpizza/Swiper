// ignore_for_file: non_constant_identifier_names

import 'dart:math';

import 'package:flutter/foundation.dart';

class Log {
  static const len = 7;

  static void i(String TAG, m) {
    if (kDebugMode) {
      print(
          "\x1B[36m${generateRandomString(len)}\x1B[0m \x1B[33m$TAG\x1B[0m | [INFO] $m\x1B[0m");
    }
  }

  static void d(String TAG, m) {
    if (kDebugMode) {
      print(
          "\x1B[36m${generateRandomString(len)}\x1B[0m \x1B[33m$TAG\x1B[0m | \x1B[34m[DEBUG] $m\x1B[0m");
    }
  }

  static void w(String TAG, m) {
    if (kDebugMode) {
      print(
          "\x1B[36m${generateRandomString(len)}\x1B[0m \x1B[33m$TAG\x1B[0m | \x1B[33m[WARN] $m\x1B[0m");
    }
  }

  static void e(String TAG, m) {
    if (kDebugMode) {
      print(
          "\x1B[36m${generateRandomString(len)}\x1B[0m \x1B[33m$TAG\x1B[0m | \x1B[31m[ERROR] $m\x1B[0m");
    }
  }
}

String generateRandomString(int len) {
  var r = Random();
  const chars = 'abcdef1234567890';
  return List.generate(len, (index) => chars[r.nextInt(chars.length)]).join();
}
