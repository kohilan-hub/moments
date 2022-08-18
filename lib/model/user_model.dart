class UserModel {
  String? uid;
  String? name;
  String? email;

  UserModel({this.uid, this.email, this.name});

  //Getting data from server
  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
      name: map['name'],
      email: map['email'],
    );
  }

  //sending data to the server
  Map<String, dynamic> toMap() {
    return {
      'uid' : uid,
      'name' : name,
      'email' : email,
    };
  }
}
