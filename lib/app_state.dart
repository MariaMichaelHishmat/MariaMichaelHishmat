import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/sqlite/sqlite_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  int _completed = 0;
  int get completed => _completed;
  set completed(int value) {
    _completed = value;
  }

  int _score = 0;
  int get score => _score;
  set score(int value) {
    _score = value;
  }

  bool _isAnswered = false;
  bool get isAnswered => _isAnswered;
  set isAnswered(bool value) {
    _isAnswered = value;
  }

  String _quizName = '';
  String get quizName => _quizName;
  set quizName(String value) {
    _quizName = value;
  }

  String _toopicName = '';
  String get toopicName => _toopicName;
  set toopicName(String value) {
    _toopicName = value;
  }
}
