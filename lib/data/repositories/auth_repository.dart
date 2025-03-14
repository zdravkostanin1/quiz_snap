import 'package:firebase_auth/firebase_auth.dart';

/// An abstract repository that defines all authentication-related methods.
///
/// This interface allows for decoupling the authentication logic from the rest
/// of the application. Implementations might use various providers (such as
/// Firebase or a custom REST API) for handling authentication.
abstract class AuthRepository {
  /// Signs in a user using their [email] and [password].
  Future<User?> signInWithEmailAndPassword({
    required String email,
    required String password,
  });

  /// Creates a new user account using the provided [email] and [password].
  Future<User?> signUpWithEmailAndPassword({
    required String email,
    required String password,
  });

  /// Signs in a user via Google authentication.
  Future<User?> continueWithGoogle();

  /// Signs out the currently authenticated user.
  Future<void> signOut();
}
