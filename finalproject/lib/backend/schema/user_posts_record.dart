import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserPostsRecord extends FirestoreRecord {
  UserPostsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "post_title" field.
  String? _postTitle;
  String get postTitle => _postTitle ?? '';
  bool hasPostTitle() => _postTitle != null;

  // "post_description" field.
  String? _postDescription;
  String get postDescription => _postDescription ?? '';
  bool hasPostDescription() => _postDescription != null;

  // "post_price" field.
  int? _postPrice;
  int get postPrice => _postPrice ?? 0;
  bool hasPostPrice() => _postPrice != null;

  // "post_photo_url_1" field.
  String? _postPhotoUrl1;
  String get postPhotoUrl1 => _postPhotoUrl1 ?? '';
  bool hasPostPhotoUrl1() => _postPhotoUrl1 != null;

  // "post_photo_url_2" field.
  String? _postPhotoUrl2;
  String get postPhotoUrl2 => _postPhotoUrl2 ?? '';
  bool hasPostPhotoUrl2() => _postPhotoUrl2 != null;

  // "post_photo_url_3" field.
  String? _postPhotoUrl3;
  String get postPhotoUrl3 => _postPhotoUrl3 ?? '';
  bool hasPostPhotoUrl3() => _postPhotoUrl3 != null;

  // "post_photo_url_4" field.
  String? _postPhotoUrl4;
  String get postPhotoUrl4 => _postPhotoUrl4 ?? '';
  bool hasPostPhotoUrl4() => _postPhotoUrl4 != null;

  void _initializeFields() {
    _postTitle = snapshotData['post_title'] as String?;
    _postDescription = snapshotData['post_description'] as String?;
    _postPrice = castToType<int>(snapshotData['post_price']);
    _postPhotoUrl1 = snapshotData['post_photo_url_1'] as String?;
    _postPhotoUrl2 = snapshotData['post_photo_url_2'] as String?;
    _postPhotoUrl3 = snapshotData['post_photo_url_3'] as String?;
    _postPhotoUrl4 = snapshotData['post_photo_url_4'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('UserPosts');

  static Stream<UserPostsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserPostsRecord.fromSnapshot(s));

  static Future<UserPostsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserPostsRecord.fromSnapshot(s));

  static UserPostsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserPostsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserPostsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserPostsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserPostsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserPostsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserPostsRecordData({
  String? postTitle,
  String? postDescription,
  int? postPrice,
  String? postPhotoUrl1,
  String? postPhotoUrl2,
  String? postPhotoUrl3,
  String? postPhotoUrl4,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'post_title': postTitle,
      'post_description': postDescription,
      'post_price': postPrice,
      'post_photo_url_1': postPhotoUrl1,
      'post_photo_url_2': postPhotoUrl2,
      'post_photo_url_3': postPhotoUrl3,
      'post_photo_url_4': postPhotoUrl4,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserPostsRecordDocumentEquality implements Equality<UserPostsRecord> {
  const UserPostsRecordDocumentEquality();

  @override
  bool equals(UserPostsRecord? e1, UserPostsRecord? e2) {
    return e1?.postTitle == e2?.postTitle &&
        e1?.postDescription == e2?.postDescription &&
        e1?.postPrice == e2?.postPrice &&
        e1?.postPhotoUrl1 == e2?.postPhotoUrl1 &&
        e1?.postPhotoUrl2 == e2?.postPhotoUrl2 &&
        e1?.postPhotoUrl3 == e2?.postPhotoUrl3 &&
        e1?.postPhotoUrl4 == e2?.postPhotoUrl4;
  }

  @override
  int hash(UserPostsRecord? e) => const ListEquality().hash([
        e?.postTitle,
        e?.postDescription,
        e?.postPrice,
        e?.postPhotoUrl1,
        e?.postPhotoUrl2,
        e?.postPhotoUrl3,
        e?.postPhotoUrl4
      ]);

  @override
  bool isValidKey(Object? o) => o is UserPostsRecord;
}
