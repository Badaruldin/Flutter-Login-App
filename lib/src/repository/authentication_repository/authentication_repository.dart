import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_login_app/src/exceptions/signup_email_password_faliure.dart';
import 'package:flutter_login_app/src/features/authentication/screens/dashboard/dashboard.dart';
import 'package:flutter_login_app/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:get/get.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  //variables
  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;
  var verificationId = ''.obs;

  @override
  void onReady() {
    firebaseUser = Rx<User?>(
        _auth.currentUser); //    firebaseUser=_auth.currentUser as Rx<User?>;
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _callingInitialScreen);
  }

  _callingInitialScreen(User? user) {
    user == null ? Get.offAll(WelcomeScreen()) : Get.offAll(Dashboard());
  }

  //Functions

  Future<void> phoneAuthentication(String phoneNumber) async {
    await _auth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: (PhoneAuthCredential credential) async {
          await _auth.signInWithCredential(credential);
        },
        verificationFailed: (FirebaseAuthException e) {
          if (e.code == "invalid-phone-number") {
            Get.snackbar("Error", "Phone number is not valid");
          }
          else{
            Get.snackbar("Error", "Un-Known Error occur");
          }
        },
        codeSent: (String verificationId, int? resendToken) {
          this.verificationId.value = verificationId;
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          this.verificationId.value=verificationId;
        });
  }
  void verifyOTP(String otp) async{
    await _auth.signInWithCredential(PhoneAuthProvider.credential(verificationId: verificationId.value, smsCode: otp));
  }

  Future<void> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      firebaseUser.value != null
          ? Get.offAll(() => Dashboard())
          : Get.to(() => WelcomeScreen());
    } on FirebaseAuthException catch (e) {
      final ex = SignUpWithEmailPasswordFaliure.code(e.code);
      print("Firebase Auth Exception - ${ex.message}");
      throw ex;
    } catch (_) {
      const ex = SignUpWithEmailPasswordFaliure();
      print("Exception - ${ex.message}");
      throw ex;
    }
  }

  Future<void> loginUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
    } catch (_) {}
  }

  Future<void> logoutUser() async => await _auth.signOut();
}
