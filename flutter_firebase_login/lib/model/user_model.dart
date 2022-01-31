class UserModel {
  String? uid;
  String? email;
  String? fstName;
  String? scdName;

  UserModel({
    this.uid,
    this.email,
    this.fstName,
    this.scdName,
  });

  // * Receiving data from server
  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
      email: map['email'],
      fstName: map['fstName'],
      scdName: map['scdName'],
    );
  }

  // * Sending data to server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'fstName': fstName,
      'scdName': scdName,
    };
  }
}
