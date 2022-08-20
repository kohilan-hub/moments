class UserModel {
  String? uid;
  String? name;
  String? email;
  bool? roleState;

  UserModel({
    this.uid,
    this.name,
    this.email,
    this.roleState,
  });

  //Getting data from server
  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
      name: map['name'],
      email: map['email'],
      roleState: map['roleState']
    );
  }

  //sending data to the server
  Map<String, dynamic> toMap() {
    return {
      'uid' : uid,
      'name' : name,
      'email' : email,
      'roleState':roleState
    };
  }
}
