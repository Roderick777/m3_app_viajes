import 'package:flutter/foundation.dart';
import 'package:m3_app_viajes/application/contants.dart';

bool isMainPlatform() {
  return defaultTargetPlatform == kMainPlatform;
}

bool isAndroid() {
  return defaultTargetPlatform == TargetPlatform.android;
}

bool isIos() {
  return defaultTargetPlatform == TargetPlatform.iOS;
}

bool isWindows() {
  return defaultTargetPlatform == TargetPlatform.windows;
}
