import 'dart:async';
import 'package:appontap/src/Login_Page.dart';
import 'package:appontap/src/validators/validations.dart';

class LoginBloc {
  StreamController _userController = new StreamController();
  StreamController _phonenumberController = new StreamController();

  Stream get userStream => _userController.stream;
  Stream get phoneStream => _phonenumberController.stream;

  // Stream getUserStream() {
  //   return _userController.stream;
  // }

  bool isValidInfo(String phonenumber) {
    //String pass
    // if (!Validations.isValidUser(username)) {
    //   _userController.sink.addError('Vui lòng nhập số điện thoại');
    //   return false;
    // }
    // _userController.sink.add("");

    if (!Validations.isValidPhoneName(phonenumber)) {
      _phonenumberController.sink.addError('Nhập số điện thoại');
      return false;
    }
    _phonenumberController.sink.add("Ok");
    return true;
  }

  void dispose() {
    // _userController.close();
    _phonenumberController.close();
  }
}
