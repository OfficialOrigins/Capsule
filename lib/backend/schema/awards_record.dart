import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class AwardsRecord extends FirestoreRecord {
  AwardsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "awards" field.
  String? _awards;
  String get awards => _awards ?? '';
  bool hasAwards() => _awards != null;

  void _initializeFields() {
    _awards = snapshotData['awards'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('awards');

  static Stream<AwardsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AwardsRecord.fromSnapshot(s));

  static Future<AwardsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AwardsRecord.fromSnapshot(s));

  static AwardsRecord fromSnapshot(DocumentSnapshot snapshot) => AwardsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AwardsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AwardsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AwardsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AwardsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAwardsRecordData({
  String? awards,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'awards': awards,
    }.withoutNulls,
  );

  return firestoreData;
}

class AwardsRecordDocumentEquality implements Equality<AwardsRecord> {
  const AwardsRecordDocumentEquality();

  @override
  bool equals(AwardsRecord? e1, AwardsRecord? e2) {
    return e1?.awards == e2?.awards;
  }

  @override
  int hash(AwardsRecord? e) => const ListEquality().hash([e?.awards]);

  @override
  bool isValidKey(Object? o) => o is AwardsRecord;
}
