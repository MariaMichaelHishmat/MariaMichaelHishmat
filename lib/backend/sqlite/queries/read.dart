import '/backend/sqlite/queries/sqlite_row.dart';
import 'package:sqflite/sqflite.dart';

Future<List<T>> _readQuery<T>(
  Database database,
  String query,
  T Function(Map<String, dynamic>) create,
) =>
    database.rawQuery(query).then((r) => r.map((e) => create(e)).toList());

/// BEGIN CHAPTERS LIST
Future<List<ChaptersLISTRow>> performChaptersLIST(
  Database database,
) {
  const query = '''
select * from Chapter'
''';
  return _readQuery(database, query, (d) => ChaptersLISTRow(d));
}

class ChaptersLISTRow extends SqliteRow {
  ChaptersLISTRow(super.data);

  int? get id => data['id'] as int?;
  String? get name => data['name'] as String?;
  String? get img => data['img'] as String?;
}

/// END CHAPTERS LIST

/// BEGIN USER LIST
Future<List<UserListRow>> performUserList(
  Database database,
) {
  const query = '''
select * from user
''';
  return _readQuery(database, query, (d) => UserListRow(d));
}

class UserListRow extends SqliteRow {
  UserListRow(super.data);

  String? get name => data['name'] as String?;
  String? get email => data['email'] as String?;
  String? get photo => data['photo'] as String?;
  int? get phoneNumder => data['phoneNumder'] as int?;
  int? get parentPhoneNumber => data['parentPhoneNumber'] as int?;
  String? get address => data['Address'] as String?;
  int? get score => data['score'] as int?;
}

/// END USER LIST

/// BEGIN TOPICS LIST
Future<List<TopicsListRow>> performTopicsList(
  Database database, {
  int? id,
}) {
  final query = '''
select * from Topics
WHERE topic_id='$id'
''';
  return _readQuery(database, query, (d) => TopicsListRow(d));
}

class TopicsListRow extends SqliteRow {
  TopicsListRow(super.data);

  String? get name => data['name'] as String?;
  String? get img => data['img'] as String?;
  String? get vid1n => data['vid1n'] as String?;
  String? get vid1 => data['vid1'] as String?;
  String? get vid2n => data['vid2n'] as String?;
  String? get vid2 => data['vid2'] as String?;
  String? get vid3n => data['vid3n'] as String?;
  String? get vid3 => data['vid3'] as String?;
  int? get topicId => data['topic_id'] as int?;
}

/// END TOPICS LIST

/// BEGIN QUIZSET LIST
Future<List<QuizSetListRow>> performQuizSetList(
  Database database, {
  int? id,
}) {
  final query = '''
select * from QuizSet
WHERE quizset_id='$id'
''';
  return _readQuery(database, query, (d) => QuizSetListRow(d));
}

class QuizSetListRow extends SqliteRow {
  QuizSetListRow(super.data);

  String? get name => data['name'] as String?;
  int? get duration => data['duration'] as int?;
  int? get quizsetId => data['quizset_id'] as int?;
  int? get totalQuestions => data['Total_Questions'] as int?;
}

/// END QUIZSET LIST
