import 'dart:async';
import 'package:appontap/src/Login_Page.dart';
import 'package:appontap/src/validators/validations.dart';

class LoginBloc {
  StreamController _passController = new StreamController();
  StreamController _emailController = new StreamController();

  Stream get emailStream => _emailController.stream;
  Stream get passStream => _passController.stream;

  bool isValid(String email, String pass) {
    if (!Validations.isValidEmail(email)) {
      _emailController.sink
          .addError('Email không thể bỏ trống, hoặc thiếu "@"!!!!');
      return false;
    }
    _emailController.sink.add("");
    if (!Validations.isValidPass(pass)) {
      _passController.sink.addError('Password phải trên 6 kí tự hoặc sai Password');
      return false;
    }
    _passController.sink.add("");
    return true;
  }

  void dispose() {
    _emailController.close();
    _passController.close();
  }
}
