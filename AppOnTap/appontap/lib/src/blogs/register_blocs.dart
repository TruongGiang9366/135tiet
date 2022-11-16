import 'dart:async';
import 'package:appontap/src/Register.dart';
import 'package:appontap/src/validators/validations.dart';

class RegisterBloc {
  StreamController _nameController = new StreamController();
  StreamController _emailController = new StreamController();
  StreamController _passController = new StreamController();
  StreamController _phoneController = new StreamController();
  // StreamController _sinhnhatController = new StreamController();

  Stream get nameStream => _nameController.stream;
  Stream get emailStream => _emailController.stream;
  Stream get passStream => _passController.stream;
  Stream get phoneStream => _phoneController.stream;
  // Stream get sinhnhatStream => _sinhnhatController.stream;

  bool isValid(String name, String email, String phone) {
    if (name == null || name.length == 0) {
      _nameController.sink.addError('Tên của bạn không được để trống!!!!!');
      return false;
    }
    _nameController.sink.add("");
    if (!Validations.isValidPhone(phone)) {
      _phoneController.sink.addError('Số điện thoại không được bỏ trống!!!!');
      return false;
    }
    _phoneController.sink.add("");
    if (!Validations.isValidEmail(email)) {
      _emailController.sink
          .addError('Email không thể bỏ trống, hoặc thiếu "@"!!!!');
      return false;
    }
    _emailController.sink.add("");
    // if (!Validations.isValidPass(pass)) {
    //   _passController.sink.addError('Password phải trên 6 ky tu');
    //   return false;
    // }
    // _passController.sink.add("");
    // if (sinhnhat == null || sinhnhat.length == 0) {
    //   _sinhnhatController.sink.addError("Nhập ngày sinh của bạn");
    //   return false;
    // }
    // _sinhnhatController.sink.add("");
    return true;
  }

  void dispose() {
    _nameController.close();
    _emailController.close();
    _phoneController.close();
  }
}
