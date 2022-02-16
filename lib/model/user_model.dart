
class UserModel {
  String? uid;
  String? email;
  String? firstName;
  String? secondName;

  UserModel({this.uid, this.email, this.firstName, this.secondName});

  // receiving data from server
  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
      email: map['email'],
      firstName: map['firstName'],
      secondName: map['secondName'],
    );
  }

  // sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'firstName': firstName,
      'secondName': secondName,
    };
  }
}





// class UserModel {
//   String? uid;
//   String? email;
//   String? displayName;
//   String? phoneNumber;
//
//   UserModel({this.uid, this.email,this.phoneNumber, displayName });
//
//   // receiving data from server
//   factory UserModel.fromMap(map) {
//     return UserModel(
//       uid: map['uid'],
//       email: map['email'],
//       displayName: map['displayName'],
//       phoneNumber: map['phoneNumber'],
//     );
//   }
//
//   // sending data to our server
//   Map<String, dynamic> toMap() {
//     return {
//       'uid': uid,
//       'email': email,
//       'fullName':displayName,
//       'phoneNumber': phoneNumber,
//     };
//   }
// }