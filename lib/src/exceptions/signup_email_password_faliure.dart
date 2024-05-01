class SignUpWithEmailPasswordFaliure {
  final String message;

  const SignUpWithEmailPasswordFaliure([this.message = "un-known error occur"]);

  factory SignUpWithEmailPasswordFaliure.code(String code){
    switch (code) {
      case 'weak-password':
        return const SignUpWithEmailPasswordFaliure(
            "Password is not strong enough");

      case "invalid-email":
        return const SignUpWithEmailPasswordFaliure(
            "Email address is not valid");

        case "email-already-in-use":
        return const SignUpWithEmailPasswordFaliure(
            "Already exists an account with the given email address");

        case "operation-not-allowed":
        return const SignUpWithEmailPasswordFaliure(
            "Email/Password accounts are not enabled. Enable email/password accounts in the Firebase Console, under the Auth tab");
      default :
        return const SignUpWithEmailPasswordFaliure();
    }
  }
}