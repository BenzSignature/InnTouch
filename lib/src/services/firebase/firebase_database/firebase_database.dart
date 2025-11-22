import 'package:inn_touch/src/config/export_config.dart';
import 'package:inn_touch/src/models/export_models.dart';

class FirebaseDatabaseService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // NOTE: function create document user AuthService
  Future<void> createUserDocument({
    required String uid,
    required String name,
    required String email,
  }) async {
    UserModel userModel = UserModel(
      id: uid,
      name: name,
      email: email,
      image: null,
    );
    await _firestore.collection('users').doc(uid).set(userModel.toJson());
  }

  Future<UserModel?> fetchUserData(String uid) async {
    try {
      DocumentSnapshot doc = await _firestore
          .collection('users')
          .doc(uid)
          .get();
      if (doc.exists) {
        return UserModel.fromSnap(doc);
      }
      return null;
    } catch (e) {
      print(e);
      return null;
    }
  }
}
