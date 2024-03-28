import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GymClassRecord extends FirestoreRecord {
  GymClassRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Cname" field.
  String? _cname;
  String get cname => _cname ?? '';
  bool hasCname() => _cname != null;

  // "capacity" field.
  String? _capacity;
  String get capacity => _capacity ?? '';
  bool hasCapacity() => _capacity != null;

  // "classImgeURL" field.
  String? _classImgeURL;
  String get classImgeURL => _classImgeURL ?? '';
  bool hasClassImgeURL() => _classImgeURL != null;

  // "data" field.
  String? _data;
  String get data => _data ?? '';
  bool hasData() => _data != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "instructor" field.
  String? _instructor;
  String get instructor => _instructor ?? '';
  bool hasInstructor() => _instructor != null;

  // "level" field.
  String? _level;
  String get level => _level ?? '';
  bool hasLevel() => _level != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  bool hasPrice() => _price != null;

  // "time" field.
  String? _time;
  String get time => _time ?? '';
  bool hasTime() => _time != null;

  void _initializeFields() {
    _cname = snapshotData['Cname'] as String?;
    _capacity = snapshotData['capacity'] as String?;
    _classImgeURL = snapshotData['classImgeURL'] as String?;
    _data = snapshotData['data'] as String?;
    _description = snapshotData['description'] as String?;
    _instructor = snapshotData['instructor'] as String?;
    _level = snapshotData['level'] as String?;
    _location = snapshotData['location'] as String?;
    _price = castToType<int>(snapshotData['price']);
    _time = snapshotData['time'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('GymClass');

  static Stream<GymClassRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GymClassRecord.fromSnapshot(s));

  static Future<GymClassRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GymClassRecord.fromSnapshot(s));

  static GymClassRecord fromSnapshot(DocumentSnapshot snapshot) =>
      GymClassRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GymClassRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GymClassRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GymClassRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GymClassRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGymClassRecordData({
  String? cname,
  String? capacity,
  String? classImgeURL,
  String? data,
  String? description,
  String? instructor,
  String? level,
  String? location,
  int? price,
  String? time,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Cname': cname,
      'capacity': capacity,
      'classImgeURL': classImgeURL,
      'data': data,
      'description': description,
      'instructor': instructor,
      'level': level,
      'location': location,
      'price': price,
      'time': time,
    }.withoutNulls,
  );

  return firestoreData;
}

class GymClassRecordDocumentEquality implements Equality<GymClassRecord> {
  const GymClassRecordDocumentEquality();

  @override
  bool equals(GymClassRecord? e1, GymClassRecord? e2) {
    return e1?.cname == e2?.cname &&
        e1?.capacity == e2?.capacity &&
        e1?.classImgeURL == e2?.classImgeURL &&
        e1?.data == e2?.data &&
        e1?.description == e2?.description &&
        e1?.instructor == e2?.instructor &&
        e1?.level == e2?.level &&
        e1?.location == e2?.location &&
        e1?.price == e2?.price &&
        e1?.time == e2?.time;
  }

  @override
  int hash(GymClassRecord? e) => const ListEquality().hash([
        e?.cname,
        e?.capacity,
        e?.classImgeURL,
        e?.data,
        e?.description,
        e?.instructor,
        e?.level,
        e?.location,
        e?.price,
        e?.time
      ]);

  @override
  bool isValidKey(Object? o) => o is GymClassRecord;
}
