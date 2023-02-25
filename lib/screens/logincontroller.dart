import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginController extends GetxController {
  var googleSignIn = GoogleSignIn();
  var GoogleAccount = Rx<GoogleSignInAccount?>(null);
  login() async {
    GoogleAccount.value = await googleSignIn.signIn();
  }
}
