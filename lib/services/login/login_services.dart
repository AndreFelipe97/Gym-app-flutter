import 'package:google_sign_in/google_sign_in.dart';
import 'package:gym/models/users_model.dart';

abstract class LoginService {
  Future<UserModel> googleSignIn();
}

class LoginServiceImplementation implements LoginService {
  @override
  Future<UserModel> googleSignIn() async {
    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: [
        'email',
      ],
    );

    final response = await _googleSignIn.signIn();
    return UserModel.google(response!);
  }
}
