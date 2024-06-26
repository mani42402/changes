import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  late String name;
  late String profilePhoto;
  late String email;
  late String uid;

  User({
    required this.name,
    required this.email,
    required this.uid,
    required this.profilePhoto,
  });

  Map<String, dynamic> toJson() => {
        'name': name,
        'profilePhoto': profilePhoto,
        'email': email,
        'uid': uid,
      };

  static User fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return User(
        email: snapshot['email'],
        profilePhoto: snapshot['profilePhoto'],
        uid: snapshot['uid'],
        name: snapshot['name'],
    );
  }
}
