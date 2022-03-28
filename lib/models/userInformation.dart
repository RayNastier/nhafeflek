// ignore_for_file: file_names

class UserInformation {
  String firstname;
  String lastname;
  String phoneNumber;
  int age;
  String photo = 'avatar';
  String province;
  String instagram;
  int haircutsDone = 0;

  UserInformation(
      {required this.firstname,
      required this.lastname,
      required this.phoneNumber,
      required this.age,
      required this.instagram,
      required this.province});
}

