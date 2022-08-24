class UserModel {
  String? uid;
  String? name;
  String? email;
  String? phoneNumber;
  bool? roleState;

  UserModel({
    this.uid,
    this.name,
    this.email,
    this.phoneNumber,
    this.roleState,
  });

  //Getting data from server
  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
      name: map['name'],
      email: map['email'],
      phoneNumber: map['phoneNumber'],
      roleState: map['roleState']
    );
  }

  //sending data to the server
  Map<String, dynamic> toMap() {
    return {
      'uid' : uid,
      'name' : name,
      'email' : email,
      'phoneNumber' : phoneNumber,
      'roleState':roleState
    };
  }
}
