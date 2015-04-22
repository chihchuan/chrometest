/**
 * A "hello world" application for Chrome Apps written in Dart.
 *
 * For more information, see:
 * - http://developer.chrome.com/apps/api_index.html
 * - https://github.com/dart-gde/chrome.dart
 */

import 'dart:html';

import 'package:chrome/chrome_app.dart' as chrome;
import 'package:chrome/gen/runtime.dart';

void main() {
  querySelector("#clickBtn").onClick.listen(clickBtn);
}
  
void clickBtn(Event e) {
  chrome.runtime.getPlatformInfo().then((m) => handleGetInfo(m));
}

handleGetInfo(PlatformInfo m) {
  querySelector("#text_id").text = m.arch;
}