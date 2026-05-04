import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  FirebaseAuth? _auth;

  // Sign Up Controllers
  final TextEditingController signUpName = TextEditingController();
  final TextEditingController signUpEmail = TextEditingController();
  final TextEditingController signUpPhoneNumber = TextEditingController();
  final TextEditingController signUpPassword = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController();

  // Login Controllers
  final TextEditingController loginEmail = TextEditingController();
  final TextEditingController loginPassword = TextEditingController();

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  AuthProvider() {
    try {
      _auth = FirebaseAuth.instance;
    } catch (e) {
      debugPrint('AuthProvider: FirebaseAuth not initialized yet.');
    }
  }

  void _setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  void clearControllers() {
    signUpName.clear();
    signUpEmail.clear();
    signUpPhoneNumber.clear();
    signUpPassword.clear();
    confirmPassword.clear();
    loginEmail.clear();
    loginPassword.clear();
  }

  @override
  void dispose() {
    signUpName.dispose();
    signUpEmail.dispose();
    signUpPhoneNumber.dispose();
    signUpPassword.dispose();
    confirmPassword.dispose();
    loginEmail.dispose();
    loginPassword.dispose();
    super.dispose();
  }

  Future<String?> signUp() async {
    if (_auth == null) {
      try {
        _auth = FirebaseAuth.instance;
      } catch (e) {
        return 'Firebase not initialized. Please restart the app.';
      }
    }

    if (signUpPassword.text != confirmPassword.text) {
      return 'Passwords do not match';
    }

    _setLoading(true);
    try {
      await _auth!.createUserWithEmailAndPassword(
        email: signUpEmail.text.trim(),
        password: signUpPassword.text.trim(),
      );
      
      await _auth!.currentUser?.updateDisplayName(signUpName.text.trim());
      
      _setLoading(false);
      clearControllers();
      return null;
    } on FirebaseAuthException catch (e) {
      _setLoading(false);
      return _getAuthErrorMessage(e);
    } catch (e) {
      _setLoading(false);
      return e.toString();
    }
  }

  Future<String?> login() async {
    if (_auth == null) {
      try {
        _auth = FirebaseAuth.instance;
      } catch (e) {
        return 'Firebase not initialized. Please restart the app.';
      }
    }

    _setLoading(true);
    try {
      await _auth!.signInWithEmailAndPassword(
        email: loginEmail.text.trim(),
        password: loginPassword.text.trim(),
      );
      _setLoading(false);
      clearControllers();
      return null;
    } on FirebaseAuthException catch (e) {
      _setLoading(false);
      return _getAuthErrorMessage(e);
    } catch (e) {
      _setLoading(false);
      return e.toString();
    }
  }

  Future<void> logout() async {
    await _auth?.signOut();
    notifyListeners();
  }

  String _getAuthErrorMessage(FirebaseAuthException e) {
    debugPrint('Firebase Auth Error Code: ${e.code}');
    debugPrint('Firebase Auth Error Message: ${e.message}');
    debugPrint('Firebase Auth Full Exception: $e');
    
    switch (e.code) {
      case 'weak-password':
        return 'The password provided is too weak.';
      case 'email-already-in-use':
        return 'The account already exists for that email.';
      case 'invalid-email':
        return 'The email address is not valid.';
      case 'user-not-found':
        return 'No user found for that email.';
      case 'wrong-password':
        return 'Wrong password provided for that user.';
      case 'invalid-credential':
        return 'Invalid email or password.';
      case 'user-disabled':
        return 'This user has been disabled.';
      case 'too-many-requests':
        return 'Too many attempts. Please try again later.';
      case 'network-request-failed':
        return 'Network error. Please check your internet connection.';
      default:
        return e.message ?? 'An unknown authentication error occurred.';
    }
  }
}
