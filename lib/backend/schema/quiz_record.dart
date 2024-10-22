import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QuizRecord extends FirestoreRecord {
  QuizRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "question" field.
  String? _question;
  String get question => _question ?? '';
  bool hasQuestion() => _question != null;

  // "opt1_b" field.
  bool? _opt1B;
  bool get opt1B => _opt1B ?? false;
  bool hasOpt1B() => _opt1B != null;

  // "opt2" field.
  String? _opt2;
  String get opt2 => _opt2 ?? '';
  bool hasOpt2() => _opt2 != null;

  // "opt2_b" field.
  bool? _opt2B;
  bool get opt2B => _opt2B ?? false;
  bool hasOpt2B() => _opt2B != null;

  // "opt3" field.
  String? _opt3;
  String get opt3 => _opt3 ?? '';
  bool hasOpt3() => _opt3 != null;

  // "opt3_b" field.
  bool? _opt3B;
  bool get opt3B => _opt3B ?? false;
  bool hasOpt3B() => _opt3B != null;

  // "opt4" field.
  String? _opt4;
  String get opt4 => _opt4 ?? '';
  bool hasOpt4() => _opt4 != null;

  // "opt4_b" field.
  bool? _opt4B;
  bool get opt4B => _opt4B ?? false;
  bool hasOpt4B() => _opt4B != null;

  // "quizset_Ref" field.
  DocumentReference? _quizsetRef;
  DocumentReference? get quizsetRef => _quizsetRef;
  bool hasQuizsetRef() => _quizsetRef != null;

  // "opt1" field.
  String? _opt1;
  String get opt1 => _opt1 ?? '';
  bool hasOpt1() => _opt1 != null;

  // "stdAns" field.
  String? _stdAns;
  String get stdAns => _stdAns ?? '';
  bool hasStdAns() => _stdAns != null;

  // "correctAns" field.
  String? _correctAns;
  String get correctAns => _correctAns ?? '';
  bool hasCorrectAns() => _correctAns != null;

  // "top_ref" field.
  DocumentReference? _topRef;
  DocumentReference? get topRef => _topRef;
  bool hasTopRef() => _topRef != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  bool hasImg() => _img != null;

  void _initializeFields() {
    _id = castToType<int>(snapshotData['id']);
    _question = snapshotData['question'] as String?;
    _opt1B = snapshotData['opt1_b'] as bool?;
    _opt2 = snapshotData['opt2'] as String?;
    _opt2B = snapshotData['opt2_b'] as bool?;
    _opt3 = snapshotData['opt3'] as String?;
    _opt3B = snapshotData['opt3_b'] as bool?;
    _opt4 = snapshotData['opt4'] as String?;
    _opt4B = snapshotData['opt4_b'] as bool?;
    _quizsetRef = snapshotData['quizset_Ref'] as DocumentReference?;
    _opt1 = snapshotData['opt1'] as String?;
    _stdAns = snapshotData['stdAns'] as String?;
    _correctAns = snapshotData['correctAns'] as String?;
    _topRef = snapshotData['top_ref'] as DocumentReference?;
    _img = snapshotData['img'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('quiz');

  static Stream<QuizRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => QuizRecord.fromSnapshot(s));

  static Future<QuizRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => QuizRecord.fromSnapshot(s));

  static QuizRecord fromSnapshot(DocumentSnapshot snapshot) => QuizRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static QuizRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      QuizRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'QuizRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is QuizRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createQuizRecordData({
  int? id,
  String? question,
  bool? opt1B,
  String? opt2,
  bool? opt2B,
  String? opt3,
  bool? opt3B,
  String? opt4,
  bool? opt4B,
  DocumentReference? quizsetRef,
  String? opt1,
  String? stdAns,
  String? correctAns,
  DocumentReference? topRef,
  String? img,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'question': question,
      'opt1_b': opt1B,
      'opt2': opt2,
      'opt2_b': opt2B,
      'opt3': opt3,
      'opt3_b': opt3B,
      'opt4': opt4,
      'opt4_b': opt4B,
      'quizset_Ref': quizsetRef,
      'opt1': opt1,
      'stdAns': stdAns,
      'correctAns': correctAns,
      'top_ref': topRef,
      'img': img,
    }.withoutNulls,
  );

  return firestoreData;
}

class QuizRecordDocumentEquality implements Equality<QuizRecord> {
  const QuizRecordDocumentEquality();

  @override
  bool equals(QuizRecord? e1, QuizRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.question == e2?.question &&
        e1?.opt1B == e2?.opt1B &&
        e1?.opt2 == e2?.opt2 &&
        e1?.opt2B == e2?.opt2B &&
        e1?.opt3 == e2?.opt3 &&
        e1?.opt3B == e2?.opt3B &&
        e1?.opt4 == e2?.opt4 &&
        e1?.opt4B == e2?.opt4B &&
        e1?.quizsetRef == e2?.quizsetRef &&
        e1?.opt1 == e2?.opt1 &&
        e1?.stdAns == e2?.stdAns &&
        e1?.correctAns == e2?.correctAns &&
        e1?.topRef == e2?.topRef &&
        e1?.img == e2?.img;
  }

  @override
  int hash(QuizRecord? e) => const ListEquality().hash([
        e?.id,
        e?.question,
        e?.opt1B,
        e?.opt2,
        e?.opt2B,
        e?.opt3,
        e?.opt3B,
        e?.opt4,
        e?.opt4B,
        e?.quizsetRef,
        e?.opt1,
        e?.stdAns,
        e?.correctAns,
        e?.topRef,
        e?.img
      ]);

  @override
  bool isValidKey(Object? o) => o is QuizRecord;
}
