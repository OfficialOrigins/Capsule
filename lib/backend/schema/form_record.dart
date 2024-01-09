import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FormRecord extends FirestoreRecord {
  FormRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "FullName" field.
  String? _fullName;
  String get fullName => _fullName ?? '';
  bool hasFullName() => _fullName != null;

  // "GradYear" field.
  int? _gradYear;
  int get gradYear => _gradYear ?? 0;
  bool hasGradYear() => _gradYear != null;

  // "ProfilePic" field.
  String? _profilePic;
  String get profilePic => _profilePic ?? '';
  bool hasProfilePic() => _profilePic != null;

  void _initializeFields() {
    _fullName = snapshotData['FullName'] as String?;
    _gradYear = castToType<int>(snapshotData['GradYear']);
    _profilePic = snapshotData['ProfilePic'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('form');

  static Stream<FormRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FormRecord.fromSnapshot(s));

  static Future<FormRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FormRecord.fromSnapshot(s));

  static FormRecord fromSnapshot(DocumentSnapshot snapshot) => FormRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FormRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FormRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FormRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FormRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFormRecordData({
  String? fullName,
  int? gradYear,
  String? profilePic,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'FullName': fullName,
      'GradYear': gradYear,
      'ProfilePic': profilePic,
    }.withoutNulls,
  );

  return firestoreData;
}

class FormRecordDocumentEquality implements Equality<FormRecord> {
  const FormRecordDocumentEquality();

  @override
  bool equals(FormRecord? e1, FormRecord? e2) {
    return e1?.fullName == e2?.fullName &&
        e1?.gradYear == e2?.gradYear &&
        e1?.profilePic == e2?.profilePic;
  }

  @override
  int hash(FormRecord? e) =>
      const ListEquality().hash([e?.fullName, e?.gradYear, e?.profilePic]);

  @override
  bool isValidKey(Object? o) => o is FormRecord;
}
