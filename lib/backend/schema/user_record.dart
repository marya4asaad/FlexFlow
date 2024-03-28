import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class UserRecord extends FirestoreRecord {
  UserRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Uemail" field.
  String? _uemail;
  String get uemail => _uemail ?? '';
  bool hasUemail() => _uemail != null;

  // "Uname" field.
  String? _uname;
  String get uname => _uname ?? '';
  bool hasUname() => _uname != null;

  // "Upassword" field.
  String? _upassword;
  String get upassword => _upassword ?? '';
  bool hasUpassword() => _upassword != null;

  // "Uphone" field.
  String? _uphone;
  String get uphone => _uphone ?? '';
  bool hasUphone() => _uphone != null;

  void _initializeFields() {
    _uemail = snapshotData['Uemail'] as String?;
    _uname = snapshotData['Uname'] as String?;
    _upassword = snapshotData['Upassword'] as String?;
    _uphone = snapshotData['Uphone'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('User');

  static Stream<UserRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserRecord.fromSnapshot(s));

  static Future<UserRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserRecord.fromSnapshot(s));

  static UserRecord fromSnapshot(DocumentSnapshot snapshot) => UserRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserRecordData({
  String? uemail,
  String? uname,
  String? upassword,
  String? uphone,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Uemail': uemail,
      'Uname': uname,
      'Upassword': upassword,
      'Uphone': uphone,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserRecordDocumentEquality implements Equality<UserRecord> {
  const UserRecordDocumentEquality();

  @override
  bool equals(UserRecord? e1, UserRecord? e2) {
    return e1?.uemail == e2?.uemail &&
        e1?.uname == e2?.uname &&
        e1?.upassword == e2?.upassword &&
        e1?.uphone == e2?.uphone;
  }

  @override
  int hash(UserRecord? e) =>
      const ListEquality().hash([e?.uemail, e?.uname, e?.upassword, e?.uphone]);

  @override
  bool isValidKey(Object? o) => o is UserRecord;
}
