import 'package:flutter/material.dart';
import 'package:shopper_buddy/constants/error_handling.dart';
import 'package:shopper_buddy/constants/global_variables.dart';
import 'package:shopper_buddy/constants/utils.dart';
import 'package:shopper_buddy/models/user.dart';
import 'package:http/http.dart' as http;

class AuthService {
  //signup user
  void signUpUser(
      {required BuildContext context,
      required String email,
      required String password,
      required String name}) async {
    try {
      User user = User(
          id: '',
          name: name,
          password: password,
          address: '',
          email: email,
          type: '',
          token: '');

      http.Response res = await http.post(
        Uri.parse('$uri/api/signup'),
        body: user.toJson(),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );

      //signin user
      

      //handles error
      httpErrorHandle(
          response: res,
          context: context,
          onSuccess: () {
            showSnackBar(
                context, 'Account Created ! Login with the same credentials');
          });
      print(res.body);
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }
}
