import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QuestionsRecord extends FirestoreRecord {
  QuestionsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Question" field.
  String? _question;
  String get question => _question ?? '';
  bool hasQuestion() => _question != null;

  // "CorrectAnswer" field.
  String? _correctAnswer;
  String get correctAnswer => _correctAnswer ?? '';
  bool hasCorrectAnswer() => _correctAnswer != null;

  // "quizSet_ref" field.
  DocumentReference? _quizSetRef;
  DocumentReference? get quizSetRef => _quizSetRef;
  bool hasQuizSetRef() => _quizSetRef != null;

  // "quiz_ref" field.
  DocumentReference? _quizRef;
  DocumentReference? get quizRef => _quizRef;
  bool hasQuizRef() => _quizRef != null;

  // "studentans" field.
  String? _studentans;
  String get studentans => _studentans ?? '';
  bool hasStudentans() => _studentans != null;

  void _initializeFields() {
    _question = snapshotData['Question'] as String?;
    _correctAnswer = snapshotData['CorrectAnswer'] as String?;
    _quizSetRef = snapshotData['quizSet_ref'] as DocumentReference?;
    _quizRef = snapshotData['quiz_ref'] as DocumentReference?;
    _studentans = snapshotData['studentans'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Questions');

  static Stream<QuestionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => QuestionsRecord.fromSnapshot(s));

  static Future<QuestionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => QuestionsRecord.fromSnapshot(s));

  static QuestionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      QuestionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static QuestionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      QuestionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'QuestionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is QuestionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createQuestionsRecordData({
  String? question,
  String? correctAnswer,
  DocumentReference? quizSetRef,
  DocumentReference? quizRef,
  String? studentans,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Question': question,
      'CorrectAnswer': correctAnswer,
      'quizSet_ref': quizSetRef,
      'quiz_ref': quizRef,
      'studentans': studentans,
    }.withoutNulls,
  );

  return firestoreData;
}

class QuestionsRecordDocumentEquality implements Equality<QuestionsRecord> {
  const QuestionsRecordDocumentEquality();

  @override
  bool equals(QuestionsRecord? e1, QuestionsRecord? e2) {
    return e1?.question == e2?.question &&
        e1?.correctAnswer == e2?.correctAnswer &&
        e1?.quizSetRef == e2?.quizSetRef &&
        e1?.quizRef == e2?.quizRef &&
        e1?.studentans == e2?.studentans;
  }

  @override
  int hash(QuestionsRecord? e) => const ListEquality().hash([
        e?.question,
        e?.correctAnswer,
        e?.quizSetRef,
        e?.quizRef,
        e?.studentans
      ]);

  @override
  bool isValidKey(Object? o) => o is QuestionsRecord;
}
