import 'package:sqflite/sqflite.dart';

/// BEGIN ADD CHAPTER
Future performAddChapter(
  Database database, {
  String? name,
  String? img,
}) {
  final query = '''
INSERT  INTO Chapter(name,img) VALUES ('$name','$img');
''';
  return database.rawQuery(query);
}

/// END ADD CHAPTER

/// BEGIN UPDATE CHAPTER
Future performUpdateChapter(
  Database database, {
  String? name,
  String? img,
  int? id,
}) {
  final query = '''
UPDATE Chapter
SET
name='$name',
img='$img',
WHERE id='$id'
''';
  return database.rawQuery(query);
}

/// END UPDATE CHAPTER

/// BEGIN DELETE CHAPTER
Future performDeleteChapter(
  Database database, {
  int? id,
}) {
  final query = '''
DELETE FROM Chapter WHERE id='$id'
''';
  return database.rawQuery(query);
}

/// END DELETE CHAPTER

/// BEGIN ADD USER
Future performAddUser(
  Database database, {
  String? name,
  String? password,
}) {
  final query = '''
INSERT  INTO userr(username,password) VALUES ('$name','$password');
''';
  return database.rawQuery(query);
}

/// END ADD USER

/// BEGIN ADD QUIZSET
Future performAddQuizset(
  Database database, {
  String? name,
  int? duration,
  int? quizsetId,
}) {
  final query = '''
INSERT  INTO QuizSet(name,duration,quizset_id) VALUES ('$name','$duration','$quizsetId');
''';
  return database.rawQuery(query);
}

/// END ADD QUIZSET

/// BEGIN ADD QUESTION
Future performAddQuestion(
  Database database, {
  String? question,
  String? studentAns,
}) {
  final query = '''
INSERT  INTO Questions(Question,StudentAns) VALUES ('$question','$studentAns');
''';
  return database.rawQuery(query);
}

/// END ADD QUESTION

/// BEGIN ADD QUIZ
Future performAddQuiz(
  Database database, {
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
}) {
  final query = '''
INSERT  INTO quiz(question,img,OPT1,OPT1bo,OPT2,OPT2bo,OPT3,OPT3bo,OPT4,OPT4bo,CorrectAns) WHERE id='$id' VALUES ('$question','$img','$opt1','$opt1bo','$opt2','$opt2bo','$opt3','$opt3bo','$opt4','$opt4bo','$correctAns');

''';
  return database.rawQuery(query);
}

/// END ADD QUIZ

/// BEGIN ADD TOPIC
Future performAddTopic(
  Database database, {
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
}) {
  final query = '''
INSERT  INTO topics(name,img,vid1n,vid1,vid2n,vid2,vid3n,vid3,date) WHERE topic_id='$id' VALUES ('$name','$img','$vid1n','$vid1','$vid2n','$vid2','$vid3n','$vid3','$date');
''';
  return database.rawQuery(query);
}

/// END ADD TOPIC

/// BEGIN UPDATE QUESTION
Future performUpdateQuestion(
  Database database, {
  String? studentAns,
  int? id,
}) {
  final query = '''
UPDATE Questions
SET
StudentAns='$studentAns',
WHERE question_id='$id'
''';
  return database.rawQuery(query);
}

/// END UPDATE QUESTION

/// BEGIN UPDATE QUIZSET
Future performUpdateQuizset(
  Database database, {
  String? totalQuestions,
  int? id,
}) {
  final query = '''
UPDATE QuizSet
SET
Total Questions='$totalQuestions',
WHERE quizset_id='$id'
''';
  return database.rawQuery(query);
}

/// END UPDATE QUIZSET

/// BEGIN UPDATE TOPICSOFUSER
Future performUpdateTopicsOfUser(
  Database database, {
  String? topicName,
  int? id,
}) {
  final query = '''
UPDATE TopicsOfUser
SET
topic Name='$topicName',
WHERE topicsofuser='$id'
''';
  return database.rawQuery(query);
}

/// END UPDATE TOPICSOFUSER
