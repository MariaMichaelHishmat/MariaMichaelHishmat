import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TopicsRecord extends FirestoreRecord {
  TopicsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "chapterRef" field.
  DocumentReference? _chapterRef;
  DocumentReference? get chapterRef => _chapterRef;
  bool hasChapterRef() => _chapterRef != null;

  // "vid1" field.
  String? _vid1;
  String get vid1 => _vid1 ?? '';
  bool hasVid1() => _vid1 != null;

  // "vid2" field.
  String? _vid2;
  String get vid2 => _vid2 ?? '';
  bool hasVid2() => _vid2 != null;

  // "quizset_ref" field.
  DocumentReference? _quizsetRef;
  DocumentReference? get quizsetRef => _quizsetRef;
  bool hasQuizsetRef() => _quizsetRef != null;

  // "vid1n" field.
  String? _vid1n;
  String get vid1n => _vid1n ?? '';
  bool hasVid1n() => _vid1n != null;

  // "vid2n" field.
  String? _vid2n;
  String get vid2n => _vid2n ?? '';
  bool hasVid2n() => _vid2n != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "vid3n" field.
  String? _vid3n;
  String get vid3n => _vid3n ?? '';
  bool hasVid3n() => _vid3n != null;

  // "vid3" field.
  String? _vid3;
  String get vid3 => _vid3 ?? '';
  bool hasVid3() => _vid3 != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _chapterRef = snapshotData['chapterRef'] as DocumentReference?;
    _vid1 = snapshotData['vid1'] as String?;
    _vid2 = snapshotData['vid2'] as String?;
    _quizsetRef = snapshotData['quizset_ref'] as DocumentReference?;
    _vid1n = snapshotData['vid1n'] as String?;
    _vid2n = snapshotData['vid2n'] as String?;
    _time = snapshotData['time'] as DateTime?;
    _vid3n = snapshotData['vid3n'] as String?;
    _vid3 = snapshotData['vid3'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('topics');

  static Stream<TopicsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TopicsRecord.fromSnapshot(s));

  static Future<TopicsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TopicsRecord.fromSnapshot(s));

  static TopicsRecord fromSnapshot(DocumentSnapshot snapshot) => TopicsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TopicsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TopicsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TopicsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TopicsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTopicsRecordData({
  String? name,
  DocumentReference? chapterRef,
  String? vid1,
  String? vid2,
  DocumentReference? quizsetRef,
  String? vid1n,
  String? vid2n,
  DateTime? time,
  String? vid3n,
  String? vid3,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'chapterRef': chapterRef,
      'vid1': vid1,
      'vid2': vid2,
      'quizset_ref': quizsetRef,
      'vid1n': vid1n,
      'vid2n': vid2n,
      'time': time,
      'vid3n': vid3n,
      'vid3': vid3,
    }.withoutNulls,
  );

  return firestoreData;
}

class TopicsRecordDocumentEquality implements Equality<TopicsRecord> {
  const TopicsRecordDocumentEquality();

  @override
  bool equals(TopicsRecord? e1, TopicsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.chapterRef == e2?.chapterRef &&
        e1?.vid1 == e2?.vid1 &&
        e1?.vid2 == e2?.vid2 &&
        e1?.quizsetRef == e2?.quizsetRef &&
        e1?.vid1n == e2?.vid1n &&
        e1?.vid2n == e2?.vid2n &&
        e1?.time == e2?.time &&
        e1?.vid3n == e2?.vid3n &&
        e1?.vid3 == e2?.vid3;
  }

  @override
  int hash(TopicsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.chapterRef,
        e?.vid1,
        e?.vid2,
        e?.quizsetRef,
        e?.vid1n,
        e?.vid2n,
        e?.time,
        e?.vid3n,
        e?.vid3
      ]);

  @override
  bool isValidKey(Object? o) => o is TopicsRecord;
}
