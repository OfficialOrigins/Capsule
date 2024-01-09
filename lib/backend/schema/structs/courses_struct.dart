// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CoursesStruct extends FFFirebaseStruct {
  CoursesStruct({
    String? courses,
    List<int>? coursespt2,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _courses = courses,
        _coursespt2 = coursespt2,
        super(firestoreUtilData);

  // "courses" field.
  String? _courses;
  String get courses => _courses ?? '';
  set courses(String? val) => _courses = val;
  bool hasCourses() => _courses != null;

  // "Coursespt2" field.
  List<int>? _coursespt2;
  List<int> get coursespt2 => _coursespt2 ?? const [];
  set coursespt2(List<int>? val) => _coursespt2 = val;
  void updateCoursespt2(Function(List<int>) updateFn) =>
      updateFn(_coursespt2 ??= []);
  bool hasCoursespt2() => _coursespt2 != null;

  static CoursesStruct fromMap(Map<String, dynamic> data) => CoursesStruct(
        courses: data['courses'] as String?,
        coursespt2: getDataList(data['Coursespt2']),
      );

  static CoursesStruct? maybeFromMap(dynamic data) =>
      data is Map ? CoursesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'courses': _courses,
        'Coursespt2': _coursespt2,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'courses': serializeParam(
          _courses,
          ParamType.String,
        ),
        'Coursespt2': serializeParam(
          _coursespt2,
          ParamType.int,
          true,
        ),
      }.withoutNulls;

  static CoursesStruct fromSerializableMap(Map<String, dynamic> data) =>
      CoursesStruct(
        courses: deserializeParam(
          data['courses'],
          ParamType.String,
          false,
        ),
        coursespt2: deserializeParam<int>(
          data['Coursespt2'],
          ParamType.int,
          true,
        ),
      );

  @override
  String toString() => 'CoursesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CoursesStruct &&
        courses == other.courses &&
        listEquality.equals(coursespt2, other.coursespt2);
  }

  @override
  int get hashCode => const ListEquality().hash([courses, coursespt2]);
}

CoursesStruct createCoursesStruct({
  String? courses,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CoursesStruct(
      courses: courses,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CoursesStruct? updateCoursesStruct(
  CoursesStruct? coursesStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    coursesStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCoursesStructData(
  Map<String, dynamic> firestoreData,
  CoursesStruct? coursesStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (coursesStruct == null) {
    return;
  }
  if (coursesStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && coursesStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final coursesStructData =
      getCoursesFirestoreData(coursesStruct, forFieldValue);
  final nestedData =
      coursesStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = coursesStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCoursesFirestoreData(
  CoursesStruct? coursesStruct, [
  bool forFieldValue = false,
]) {
  if (coursesStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(coursesStruct.toMap());

  // Add any Firestore field values
  coursesStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCoursesListFirestoreData(
  List<CoursesStruct>? coursesStructs,
) =>
    coursesStructs?.map((e) => getCoursesFirestoreData(e, true)).toList() ?? [];
