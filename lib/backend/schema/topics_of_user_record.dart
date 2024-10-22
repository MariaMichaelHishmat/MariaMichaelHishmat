import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TopicsOfUserRecord extends FirestoreRecord {
  TopicsOfUserRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "topic" field.
  String? _topic;
  String get topic => _topic ?? '';
  bool hasTopic() => _topic != null;

  void _initializeFields() {
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _topic = snapshotData['topic'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('topics_of_user');

  static Stream<TopicsOfUserRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TopicsOfUserRecord.fromSnapshot(s));

  static Future<TopicsOfUserRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TopicsOfUserRecord.fromSnapshot(s));

  static TopicsOfUserRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TopicsOfUserRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TopicsOfUserRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TopicsOfUserRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TopicsOfUserRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TopicsOfUserRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTopicsOfUserRecordData({
  DocumentReference? userRef,
  String? topic,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_ref': userRef,
      'topic': topic,
    }.withoutNulls,
  );

  return firestoreData;
}

class TopicsOfUserRecordDocumentEquality
    implements Equality<TopicsOfUserRecord> {
  const TopicsOfUserRecordDocumentEquality();

  @override
  bool equals(TopicsOfUserRecord? e1, TopicsOfUserRecord? e2) {
    return e1?.userRef == e2?.userRef && e1?.topic == e2?.topic;
  }

  @override
  int hash(TopicsOfUserRecord? e) =>
      const ListEquality().hash([e?.userRef, e?.topic]);

  @override
  bool isValidKey(Object? o) => o is TopicsOfUserRecord;
}
