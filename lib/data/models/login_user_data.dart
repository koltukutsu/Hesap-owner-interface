class LoginUserData {
  final String name;
  final String surname;
  final String? region, province, district, dormitory;
  final String userName;
  final String userPassword;
  final bool admin;

  LoginUserData(
      {required this.name,
      required this.surname,
      required this.userName,
      required this.userPassword,
      required this.admin,
      this.region,
      this.province,
      this.district,
      this.dormitory});
}
