import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class BlogRecord extends FirestoreRecord {
  BlogRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "estructura" field.
  BlogStruct? _estructura;
  BlogStruct get estructura => _estructura ?? BlogStruct();
  bool hasEstructura() => _estructura != null;

  void _initializeFields() {
    _estructura = BlogStruct.maybeFromMap(snapshotData['estructura']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('blog');

  static Stream<BlogRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BlogRecord.fromSnapshot(s));

  static Future<BlogRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BlogRecord.fromSnapshot(s));

  static BlogRecord fromSnapshot(DocumentSnapshot snapshot) => BlogRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BlogRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BlogRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BlogRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BlogRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBlogRecordData({
  BlogStruct? estructura,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'estructura': BlogStruct().toMap(),
    }.withoutNulls,
  );

  // Handle nested data for "estructura" field.
  addBlogStructData(firestoreData, estructura, 'estructura');

  return firestoreData;
}

class BlogRecordDocumentEquality implements Equality<BlogRecord> {
  const BlogRecordDocumentEquality();

  @override
  bool equals(BlogRecord? e1, BlogRecord? e2) {
    return e1?.estructura == e2?.estructura;
  }

  @override
  int hash(BlogRecord? e) => const ListEquality().hash([e?.estructura]);

  @override
  bool isValidKey(Object? o) => o is BlogRecord;
}
