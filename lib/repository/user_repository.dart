import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:nalift/constants/db_collections.dart';
import 'package:nalift/models/user_model.dart';

class UserRepository {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  // final AuthRepository _authRepository = AuthRepository.instance;
  // final FirebaseStorage _storage = FirebaseStorage.instance;

  /// Create user
  save(UserModel user) async {
    try {
      // ---# Put user in Firestore DB
      await _db
          .collection(MyDbCollections.users)
          .doc(user.id)
          .set(user.toJSON());
    } catch (e) {
      throw 'Something went wrong ${e.toString()}';
    }
  }

  // /// Read user
  // Future<UserModel> getUser() async {
  //   try {
  //     final documentSnapshot = await _db
  //         .collection(MyDBCollections.users)
  //         .doc(_authRepository.authUser?.uid)
  //         .get();

  //     if (documentSnapshot.exists) {
  //       return UserModel.fromSnapshot(documentSnapshot);
  //     }

  //     return UserModel.empty();
  //   } catch (e) {
  //     throw 'Something went wrong ${e.toString()}';
  //   }
  // }

  // /// Update single user field
  // Future<void> updateSingleField(Map<String, dynamic> json) async {
  //   try {
  //     await _db
  //         .collection(MyDBCollections.users)
  //         .doc(_authRepository.authUser?.uid)
  //         .update(json);
  //   } catch (e) {
  //     throw 'Something went wrong ${e.toString()}';
  //   }
  // }

  // /// Delete user
  // Future<void> delete() async {
  //   try {
  //     await _db
  //         .collection(MyDBCollections.users)
  //         .doc(_authRepository.authUser!.uid)
  //         .delete();
  //   } catch (e) {
  //     throw e.toString();
  //   }
  // }

  // /// Upload any image
  // Future<String> uploadImage(String path, XFile image) async {
  //   try {
  //     final ref = _storage.ref(path).child(image.name);
  //     await ref.putFile(File(image.path));
  //     final url = await ref.getDownloadURL();
  //     return url;
  //   } catch (e) {
  //     throw e.toString();
  //   }
  // }
}
