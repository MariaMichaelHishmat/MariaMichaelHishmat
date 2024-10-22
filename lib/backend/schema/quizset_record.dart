import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QuizsetRecord extends FirestoreRecord {
  QuizsetRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "quiz_name" field.
  String? _quizName;
  String get quizName => _quizName ?? '';
  bool hasQuizName() => _quizName != null;

  // "duration" field.
  int? _duration;
  int get duration => _duration ?? 0;
  bool hasDuration() => _duration != null;

  // "total_questions" field.
  int? _totalQuestions;
  int get totalQuestions => _totalQuestions ?? 0;
  bool hasTotalQuestions() => _totalQuestions != null;

  // "topic_ref" field.
  DocumentReference? _topicRef;
  DocumentReference? get topicRef => _topicRef;
  bool hasTopicRef() => _topicRef != null;

  // "quiz_ref" field.
  DocumentReference? _quizRef;
  DocumentReference? get quizRef => _quizRef;
  bool hasQuizRef() => _quizRef != null;

  // "quizset_ref" field.
  DocumentReference? _quizsetRef;
  DocumentReference? get quizsetRef => _quizsetRef;
  bool hasQuizsetRef() => _quizsetRef != null;

  void _initializeFields() {
    _quizName = snapshotData['quiz_name'] as String?;
    _duration = castToType<int>(snapshotData['duration']);
    _totalQuestions = castToType<int>(snapshotData['total_questions']);
    _topicRef = snapshotData['topic_ref'] as DocumentReference?;
    _quizRef = snapshotData['quiz_ref'] as DocumentReference?;
    _quizsetRef = snapshotData['quizset_ref'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('quizset');

  static Stream<QuizsetRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => QuizsetRecord.fromSnapshot(s));

  static Future<QuizsetRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => QuizsetRecord.fromSnapshot(s));

  static QuizsetRecord fromSnapshot(DocumentSnapshot snapshot) =>
      QuizsetRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static QuizsetRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      QuizsetRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'QuizsetRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is QuizsetRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createQuizsetRecordData({
  String? quizName,
  int? duration,
  int? totalQuestions,
  DocumentReference? topicRef,
  DocumentReference? quizRef,
  DocumentReference? quizsetRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'quiz_name': quizName,
      'duration': duration,
      'total_questions': totalQuestions,
      'topic_ref': topicRef,
      'quiz_ref': quizRef,
      'quizset_ref': quizsetRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class QuizsetRecordDocumentEquality implements Equality<QuizsetRecord> {
  const QuizsetRecordDocumentEquality();

  @override
  bool equals(QuizsetRecord? e1, QuizsetRecord? e2) {
    return e1?.quizName == e2?.quizName &&
        e1?.duration == e2?.duration &&
        e1?.totalQuestions == e2?.totalQuestions &&
        e1?.topicRef == e2?.topicRef &&
        e1?.quizRef == e2?.quizRef &&
        e1?.quizsetRef == e2?.quizsetRef;
  }

  @override
  int hash(QuizsetRecord? e) => const ListEquality().hash([
        e?.quizName,
        e?.duration,
        e?.totalQuestions,
        e?.topicRef,
        e?.quizRef,
        e?.quizsetRef
      ]);

  @override
  bool isValidKey(Object? o) => o is QuizsetRecord;
}
