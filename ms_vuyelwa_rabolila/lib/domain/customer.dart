class Customer {
  String firstName;
  String lastName;
  String? _fullName;
  String? about;

  // login details
  String password;
  String email;

  Customer(
      this.firstName, this.lastName, this.about, this.password, this.email) {
    fullName();
  }

  void fullName() {
    _fullName = '$lastName $firstName';
  }
}
