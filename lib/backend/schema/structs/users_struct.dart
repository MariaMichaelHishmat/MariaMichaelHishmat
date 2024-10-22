// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersStruct extends FFFirebaseStruct {
  UsersStruct({
    String? name,
    String? email,
    String? photo,
    int? phoneNumber,
    int? parentPhoneNumber,
    String? address,
    int? score,
    String? password,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _email = email,
        _photo = photo,
        _phoneNumber = phoneNumber,
        _parentPhoneNumber = parentPhoneNumber,
        _address = address,
        _score = score,
        _password = password,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "photo" field.
  String? _photo;
  String get photo => _photo ?? '';
  set photo(String? val) => _photo = val;

  bool hasPhoto() => _photo != null;

  // "phoneNumber" field.
  int? _phoneNumber;
  int get phoneNumber => _phoneNumber ?? 0;
  set phoneNumber(int? val) => _phoneNumber = val;

  void incrementPhoneNumber(int amount) => phoneNumber = phoneNumber + amount;

  bool hasPhoneNumber() => _phoneNumber != null;

  // "parentPhoneNumber" field.
  int? _parentPhoneNumber;
  int get parentPhoneNumber => _parentPhoneNumber ?? 0;
  set parentPhoneNumber(int? val) => _parentPhoneNumber = val;

  void incrementParentPhoneNumber(int amount) =>
      parentPhoneNumber = parentPhoneNumber + amount;

  bool hasParentPhoneNumber() => _parentPhoneNumber != null;

  // "Address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;

  bool hasAddress() => _address != null;

  // "Score" field.
  int? _score;
  int get score => _score ?? 0;
  set score(int? val) => _score = val;

  void incrementScore(int amount) => score = score + amount;

  bool hasScore() => _score != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  set password(String? val) => _password = val;

  bool hasPassword() => _password != null;

  static UsersStruct fromMap(Map<String, dynamic> data) => UsersStruct(
        name: data['name'] as String?,
        email: data['email'] as String?,
        photo: data['photo'] as String?,
        phoneNumber: castToType<int>(data['phoneNumber']),
        parentPhoneNumber: castToType<int>(data['parentPhoneNumber']),
        address: data['Address'] as String?,
        score: castToType<int>(data['Score']),
        password: data['password'] as String?,
      );

  static UsersStruct? maybeFromMap(dynamic data) =>
      data is Map ? UsersStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'email': _email,
        'photo': _photo,
        'phoneNumber': _phoneNumber,
        'parentPhoneNumber': _parentPhoneNumber,
        'Address': _address,
        'Score': _score,
        'password': _password,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'photo': serializeParam(
          _photo,
          ParamType.String,
        ),
        'phoneNumber': serializeParam(
          _phoneNumber,
          ParamType.int,
        ),
        'parentPhoneNumber': serializeParam(
          _parentPhoneNumber,
          ParamType.int,
        ),
        'Address': serializeParam(
          _address,
          ParamType.String,
        ),
        'Score': serializeParam(
          _score,
          ParamType.int,
        ),
        'password': serializeParam(
          _password,
          ParamType.String,
        ),
      }.withoutNulls;

  static UsersStruct fromSerializableMap(Map<String, dynamic> data) =>
      UsersStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        photo: deserializeParam(
          data['photo'],
          ParamType.String,
          false,
        ),
        phoneNumber: deserializeParam(
          data['phoneNumber'],
          ParamType.int,
          false,
        ),
        parentPhoneNumber: deserializeParam(
          data['parentPhoneNumber'],
          ParamType.int,
          false,
        ),
        address: deserializeParam(
          data['Address'],
          ParamType.String,
          false,
        ),
        score: deserializeParam(
          data['Score'],
          ParamType.int,
          false,
        ),
        password: deserializeParam(
          data['password'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UsersStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UsersStruct &&
        name == other.name &&
        email == other.email &&
        photo == other.photo &&
        phoneNumber == other.phoneNumber &&
        parentPhoneNumber == other.parentPhoneNumber &&
        address == other.address &&
        score == other.score &&
        password == other.password;
  }

  @override
  int get hashCode => const ListEquality().hash([
        name,
        email,
        photo,
        phoneNumber,
        parentPhoneNumber,
        address,
        score,
        password
      ]);
}

UsersStruct createUsersStruct({
  String? name,
  String? email,
  String? photo,
  int? phoneNumber,
  int? parentPhoneNumber,
  String? address,
  int? score,
  String? password,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UsersStruct(
      name: name,
      email: email,
      photo: photo,
      phoneNumber: phoneNumber,
      parentPhoneNumber: parentPhoneNumber,
      address: address,
      score: score,
      password: password,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UsersStruct? updateUsersStruct(
  UsersStruct? users, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    users
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUsersStructData(
  Map<String, dynamic> firestoreData,
  UsersStruct? users,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (users == null) {
    return;
  }
  if (users.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && users.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final usersData = getUsersFirestoreData(users, forFieldValue);
  final nestedData = usersData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = users.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUsersFirestoreData(
  UsersStruct? users, [
  bool forFieldValue = false,
]) {
  if (users == null) {
    return {};
  }
  final firestoreData = mapToFirestore(users.toMap());

  // Add any Firestore field values
  users.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUsersListFirestoreData(
  List<UsersStruct>? userss,
) =>
    userss?.map((e) => getUsersFirestoreData(e, true)).toList() ?? [];
