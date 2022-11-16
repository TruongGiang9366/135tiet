class Validations {
  //kiem tra co valid co hop le khong
  static bool isValidUser(String user) {
    return user != null && user.length > 6 && user.contains("@");
  }

  static bool isValidPass(String pass) {
    return pass != null && pass.length > 6;
  }

  static bool isValidEmail(String email) {
    return email != null && email.length > 6 && email.contains("@");
  }

  static bool isValidPhone(String phone) {
    return phone != null && phone.length >= 10;
  }

  static bool isValidPhoneName(String phonename) {
    return phonename != null && phonename.length >= 10;
  }
}
