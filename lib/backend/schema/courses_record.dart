import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class CoursesRecord extends FirestoreRecord {
  CoursesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "courses" field.
  String? _courses;
  String get courses => _courses ?? '';
  bool hasCourses() => _courses != null;

  // "course1" field.
  String? _course1;
  String get course1 => _course1 ?? '';
  bool hasCourse1() => _course1 != null;

  // "course2" field.
  String? _course2;
  String get course2 => _course2 ?? '';
  bool hasCourse2() => _course2 != null;

  // "course3" field.
  String? _course3;
  String get course3 => _course3 ?? '';
  bool hasCourse3() => _course3 != null;

  // "course4" field.
  String? _course4;
  String get course4 => _course4 ?? '';
  bool hasCourse4() => _course4 != null;

  // "course5" field.
  String? _course5;
  String get course5 => _course5 ?? '';
  bool hasCourse5() => _course5 != null;

  // "course6" field.
  String? _course6;
  String get course6 => _course6 ?? '';
  bool hasCourse6() => _course6 != null;

  // "course7" field.
  String? _course7;
  String get course7 => _course7 ?? '';
  bool hasCourse7() => _course7 != null;

  // "course8" field.
  String? _course8;
  String get course8 => _course8 ?? '';
  bool hasCourse8() => _course8 != null;

  void _initializeFields() {
    _courses = snapshotData['courses'] as String?;
    _course1 = snapshotData['course1'] as String?;
    _course2 = snapshotData['course2'] as String?;
    _course3 = snapshotData['course3'] as String?;
    _course4 = snapshotData['course4'] as String?;
    _course5 = snapshotData['course5'] as String?;
    _course6 = snapshotData['course6'] as String?;
    _course7 = snapshotData['course7'] as String?;
    _course8 = snapshotData['course8'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Courses');

  static Stream<CoursesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CoursesRecord.fromSnapshot(s));

  static Future<CoursesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CoursesRecord.fromSnapshot(s));

  static CoursesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CoursesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CoursesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CoursesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CoursesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CoursesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCoursesRecordData({
  String? courses,
  String? course1,
  String? course2,
  String? course3,
  String? course4,
  String? course5,
  String? course6,
  String? course7,
  String? course8,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'courses': courses,
      'course1': course1,
      'course2': course2,
      'course3': course3,
      'course4': course4,
      'course5': course5,
      'course6': course6,
      'course7': course7,
      'course8': course8,
    }.withoutNulls,
  );

  return firestoreData;
}

class CoursesRecordDocumentEquality implements Equality<CoursesRecord> {
  const CoursesRecordDocumentEquality();

  @override
  bool equals(CoursesRecord? e1, CoursesRecord? e2) {
    return e1?.courses == e2?.courses &&
        e1?.course1 == e2?.course1 &&
        e1?.course2 == e2?.course2 &&
        e1?.course3 == e2?.course3 &&
        e1?.course4 == e2?.course4 &&
        e1?.course5 == e2?.course5 &&
        e1?.course6 == e2?.course6 &&
        e1?.course7 == e2?.course7 &&
        e1?.course8 == e2?.course8;
  }

  @override
  int hash(CoursesRecord? e) => const ListEquality().hash([
        e?.courses,
        e?.course1,
        e?.course2,
        e?.course3,
        e?.course4,
        e?.course5,
        e?.course6,
        e?.course7,
        e?.course8
      ]);

  @override
  bool isValidKey(Object? o) => o is CoursesRecord;
}
