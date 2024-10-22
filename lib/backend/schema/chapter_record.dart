import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChapterRecord extends FirestoreRecord {
  ChapterRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "short_desc" field.
  String? _shortDesc;
  String get shortDesc => _shortDesc ?? '';
  bool hasShortDesc() => _shortDesc != null;

  // "topic_ref" field.
  DocumentReference? _topicRef;
  DocumentReference? get topicRef => _topicRef;
  bool hasTopicRef() => _topicRef != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  bool hasImg() => _img != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _name = snapshotData['name'] as String?;
    _shortDesc = snapshotData['short_desc'] as String?;
    _topicRef = snapshotData['topic_ref'] as DocumentReference?;
    _img = snapshotData['img'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chapter');

  static Stream<ChapterRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChapterRecord.fromSnapshot(s));

  static Future<ChapterRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChapterRecord.fromSnapshot(s));

  static ChapterRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ChapterRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChapterRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChapterRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChapterRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChapterRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChapterRecordData({
  String? id,
  String? name,
  String? shortDesc,
  DocumentReference? topicRef,
  String? img,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'name': name,
      'short_desc': shortDesc,
      'topic_ref': topicRef,
      'img': img,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChapterRecordDocumentEquality implements Equality<ChapterRecord> {
  const ChapterRecordDocumentEquality();

  @override
  bool equals(ChapterRecord? e1, ChapterRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.name == e2?.name &&
        e1?.shortDesc == e2?.shortDesc &&
        e1?.topicRef == e2?.topicRef &&
        e1?.img == e2?.img;
  }

  @override
  int hash(ChapterRecord? e) => const ListEquality()
      .hash([e?.id, e?.name, e?.shortDesc, e?.topicRef, e?.img]);

  @override
  bool isValidKey(Object? o) => o is ChapterRecord;
}
