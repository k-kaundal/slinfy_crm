import 'package:firebase_auth/firebase_auth.dart';
import 'package:slinfy_crm/src/models/user_model.dart';

class AuthenticationService {
  FirebaseAuth auth = FirebaseAuth.instance;

  Stream<UserModel> retrieveCurrentUser() {
    return auth.authStateChanges().map((User? user) {
      if (user != null) {
        return UserModel(
            uid: user.uid, email: user.email, displayName: user.displayName);
      } else {
        return UserModel(uid: "uid");
      }
    });
  }

  Future<UserCredential?> signUp(UserModel userModel) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: userModel.email.toString(),
              password: userModel.password.toString());
      verifyEmail();
      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw FirebaseAuthException(code: e.toString());
    }
  }

  Future<UserCredential?> signIn(UserModel userModel) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: userModel.email.toString(),
              password: userModel.password.toString());

      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw FirebaseAuthException(code: e.toString());
    }
  }

  Future<void> verifyEmail() async {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null && !user.emailVerified) {
      return await user.sendEmailVerification();
    }
  }

  Future<void> signOut() async {
    return await FirebaseAuth.instance.signOut();
  }
}
