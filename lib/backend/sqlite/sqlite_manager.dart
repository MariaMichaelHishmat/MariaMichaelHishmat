import 'package:flutter/foundation.dart';

import '/backend/sqlite/init.dart';
import 'queries/read.dart';
import 'queries/update.dart';

import 'package:sqflite/sqflite.dart';
export 'queries/read.dart';
export 'queries/update.dart';

class SQLiteManager {
  SQLiteManager._();

  static SQLiteManager? _instance;
  static SQLiteManager get instance => _instance ??= SQLiteManager._();

  static late Database _database;
  Database get database => _database;

  static Future initialize() async {
    if (kIsWeb) {
      return;
    }
    _database = await initializeDatabaseFromDbFile(
      'mr_abd_elrazek',
      'Mr_abd_elrazek.db',
    );
  }

  /// START READ QUERY CALLS

  Future<List<ChaptersLISTRow>> chaptersLIST() => performChaptersLIST(
        _database,
      );

  Future<List<UserListRow>> userList() => performUserList(
        _database,
      );

  Future<List<TopicsListRow>> topicsList({
    int? id,
  }) =>
      performTopicsList(
        _database,
        id: id,
      );

  Future<List<QuizSetListRow>> quizSetList({
    int? id,
  }) =>
      performQuizSetList(
        _database,
        id: id,
      );

  /// END READ QUERY CALLS

  /// START UPDATE QUERY CALLS

  Future addChapter({
    String? name,
    String? img,
  }) =>
      performAddChapter(
        _database,
        name: name,
        img: img,
      );

  Future updateChapter({
    String? name,
    String? img,
    int? id,
  }) =>
      performUpdateChapter(
        _database,
        name: name,
        img: img,
        id: id,
      );

  Future deleteChapter({
    int? id,
  }) =>
      performDeleteChapter(
        _database,
        id: id,
      );

  Future addUser({
    String? name,
    String? password,
  }) =>
      performAddUser(
        _database,
        name: name,
        password: password,
      );

  Future addQuizset({
    String? name,
    int? duration,
    int? quizsetId,
  }) =>
      performAddQuizset(
        _database,
        name: name,
        duration: duration,
        quizsetId: quizsetId,
      );

  Future addQuestion({
    String? question,
    String? studentAns,
  }) =>
      performAddQuestion(
        _database,
        question: question,
        studentAns: studentAns,
      );

  Future addQuiz({
    String? question,
    String? img,
    String? opt1,
    bool? opt1bo,
    String? opt2,
    bool? opt2bo,
    String? opt3,
    bool? opt3bo,
    String? opt4,
    bool? opt4bo,
    String? correctAns,
    int? id,
  }) =>
      performAddQuiz(
        _database,
        question: question,
        img: img,
        opt1: opt1,
        opt1bo: opt1bo,
        opt2: opt2,
        opt2bo: opt2bo,
        opt3: opt3,
        opt3bo: opt3bo,
        opt4: opt4,
        opt4bo: opt4bo,
        correctAns: correctAns,
        id: id,
      );

  Future addTopic({
    String? name,
    String? img,
    String? vid1n,
    String? vid1,
    String? vid2n,
    String? vid2,
    String? vid3n,
    String? vid3,
    DateTime? date,
    int? id,
  }) =>
      performAddTopic(
        _database,
        name: name,
        img: img,
        vid1n: vid1n,
        vid1: vid1,
        vid2n: vid2n,
        vid2: vid2,
        vid3n: vid3n,
        vid3: vid3,
        date: date,
        id: id,
      );

  Future updateQuestion({
    String? studentAns,
    int? id,
  }) =>
      performUpdateQuestion(
        _database,
        studentAns: studentAns,
        id: id,
      );

  Future updateQuizset({
    String? totalQuestions,
    int? id,
  }) =>
      performUpdateQuizset(
        _database,
        totalQuestions: totalQuestions,
        id: id,
      );

  Future updateTopicsOfUser({
    String? topicName,
    int? id,
  }) =>
      performUpdateTopicsOfUser(
        _database,
        topicName: topicName,
        id: id,
      );

  /// END UPDATE QUERY CALLS
}
