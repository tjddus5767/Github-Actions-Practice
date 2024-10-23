bool validateLogin(String username, String password) {
  return username.trim().isNotEmpty &&
      password.trim().isNotEmpty &&
      password.length >= 6; // 여기서 trim()을 제거합니다.
}
