import 'dart:convert';

import 'package:localstorage/localstorage.dart';

class LocalStorageHelper {
  static add(String key, dynamic value) {
    LocalStorage storage = LocalStorage(key);
    dynamic storedValue = storage.getItem(key) ?? '[]';

    dynamic list = jsonDecode(storedValue);
    list = [...list, value];
    storage.setItem(key, jsonEncode(list));
  }

  static list(String key) {
    LocalStorage storage = LocalStorage(key);
    dynamic storedValue = storage.getItem(key);
    storedValue ??= '[]';
    List<dynamic> response = jsonDecode(storedValue);
    return response;
  }
}
