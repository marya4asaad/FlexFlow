import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class ReservationRecord extends FirestoreRecord {
  ReservationRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "data" field.
  String? _data;
  String get data => _data ?? '';
  bool hasData() => _data != null;

  // "time" field.
  String? _time;
  String get time => _time ?? '';
  bool hasTime() => _time != null;

  // "classid" field.
  DocumentReference? _classid;
  DocumentReference? get classid => _classid;
  bool hasClassid() => _classid != null;

  // "userid" field.
  DocumentReference? _userid;
  DocumentReference? get userid => _userid;
  bool hasUserid() => _userid != null;

  void _initializeFields() {
    _data = snapshotData['data'] as String?;
    _time = snapshotData['time'] as String?;
    _classid = snapshotData['classid'] as DocumentReference?;
    _userid = snapshotData['userid'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Reservation');

  static Stream<ReservationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReservationRecord.fromSnapshot(s));

  static Future<ReservationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReservationRecord.fromSnapshot(s));

  static ReservationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReservationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReservationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReservationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReservationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReservationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReservationRecordData({
  String? data,
  String? time,
  DocumentReference? classid,
  DocumentReference? userid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'data': data,
      'time': time,
      'classid': classid,
      'userid': userid,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReservationRecordDocumentEquality implements Equality<ReservationRecord> {
  const ReservationRecordDocumentEquality();

  @override
  bool equals(ReservationRecord? e1, ReservationRecord? e2) {
    return e1?.data == e2?.data &&
        e1?.time == e2?.time &&
        e1?.classid == e2?.classid &&
        e1?.userid == e2?.userid;
  }

  @override
  int hash(ReservationRecord? e) =>
      const ListEquality().hash([e?.data, e?.time, e?.classid, e?.userid]);

  @override
  bool isValidKey(Object? o) => o is ReservationRecord;
}
