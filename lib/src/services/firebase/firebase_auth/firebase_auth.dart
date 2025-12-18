import 'package:inn_touch/src/config/export_config.dart';
import 'package:inn_touch/src/models/user/export_user_model.dart';
import 'package:inn_touch/src/services/export_services.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseDatabaseService firebaseDatabaseService =
      FirebaseDatabaseService();

  Stream<User?> get authStateChanges => _auth.authStateChanges();

  Future<bool> signInAsGuest() async {
    try {
      await _auth.signInAnonymously();
      return true;
    } catch (e) {
      print("Error signing in as guest: $e");
      return false;
    }
  }

  Future<bool> login(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> signUp(String name, String email, String password, String phone) async {
    try {
      // NOTE: create user in Authentication
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);
      // NOTE: user DatabaseService for a create document user
      // NOTE: writing to the database to the service
      await firebaseDatabaseService.createUserDocument(
        uid: userCredential.user!.uid,
        name: name,
        email: email,
        phone: phone,
      );

      return true;
    } catch (e) {
      return false;
    }
  }

  Future<void> signOut() async {
    try {
      await _auth.signOut();
    } catch (e) {
      print("Error signing out: $e");
    }
  }
}
