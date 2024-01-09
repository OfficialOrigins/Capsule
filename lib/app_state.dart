import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _courseTextfeild =
          prefs.getStringList('ff_courseTextfeild') ?? _courseTextfeild;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _emailState = false;
  bool get emailState => _emailState;
  set emailState(bool value) {
    _emailState = value;
  }

  bool _passwordState = false;
  bool get passwordState => _passwordState;
  set passwordState(bool value) {
    _passwordState = value;
  }

  List<String> _courseTextfeild = [];
  List<String> get courseTextfeild => _courseTextfeild;
  set courseTextfeild(List<String> value) {
    _courseTextfeild = value;
    prefs.setStringList('ff_courseTextfeild', value);
  }

  void addToCourseTextfeild(String value) {
    _courseTextfeild.add(value);
    prefs.setStringList('ff_courseTextfeild', _courseTextfeild);
  }

  void removeFromCourseTextfeild(String value) {
    _courseTextfeild.remove(value);
    prefs.setStringList('ff_courseTextfeild', _courseTextfeild);
  }

  void removeAtIndexFromCourseTextfeild(int index) {
    _courseTextfeild.removeAt(index);
    prefs.setStringList('ff_courseTextfeild', _courseTextfeild);
  }

  void updateCourseTextfeildAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _courseTextfeild[index] = updateFn(_courseTextfeild[index]);
    prefs.setStringList('ff_courseTextfeild', _courseTextfeild);
  }

  void insertAtIndexInCourseTextfeild(int index, String value) {
    _courseTextfeild.insert(index, value);
    prefs.setStringList('ff_courseTextfeild', _courseTextfeild);
  }

  List<int> _coursept2 = [];
  List<int> get coursept2 => _coursept2;
  set coursept2(List<int> value) {
    _coursept2 = value;
  }

  void addToCoursept2(int value) {
    _coursept2.add(value);
  }

  void removeFromCoursept2(int value) {
    _coursept2.remove(value);
  }

  void removeAtIndexFromCoursept2(int index) {
    _coursept2.removeAt(index);
  }

  void updateCoursept2AtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    _coursept2[index] = updateFn(_coursept2[index]);
  }

  void insertAtIndexInCoursept2(int index, int value) {
    _coursept2.insert(index, value);
  }

  final _userDocQueryManager = FutureRequestManager<UsersRecord>();
  Future<UsersRecord> userDocQuery({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<UsersRecord> Function() requestFn,
  }) =>
      _userDocQueryManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearUserDocQueryCache() => _userDocQueryManager.clear();
  void clearUserDocQueryCacheKey(String? uniqueKey) =>
      _userDocQueryManager.clearRequest(uniqueKey);
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
