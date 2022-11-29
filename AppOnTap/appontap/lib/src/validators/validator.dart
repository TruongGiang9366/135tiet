class Validations {
  //kiem tra co valid co hop le khong

  static bool isValidPass(String pass) {
    return pass != null && pass.length > 6;
  }

  static bool isValidEmail(String email) {
    return email != null && email.length > 6 && email.contains("@");
  }

  static bool isValidPhone(String phone) {
    return phone != null && phone.length >= 10;
  }
}