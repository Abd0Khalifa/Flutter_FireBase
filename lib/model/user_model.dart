class UserModel {
  final String name;
  final String email;
  final String bio;
  final String profilPic;
  final String createdAt;
  final String phoneNumber;
  final String uid;

  UserModel({
    required this.name,
    required this.email,
    required this.bio,
    required this.profilPic,
    required this.createdAt,
    required this.phoneNumber,
    required this.uid,
  });

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
        name: map['name'] ?? '',
        email: map['email'] ?? '',
        bio: map['bio'] ?? '',
        profilPic: map['profilePic'] ?? '',
        createdAt: map['createdAt'] ?? '',
        phoneNumber: map['phoneNumber'] ?? '',
        uid: map['uid'] ?? '');
  }

  Map<String, dynamic> toMap() {
    return {
      "name": name,
      "email": email,
      "uid": uid,
      "bio": bio,
      "profilePic": profilPic,
      "phoneNumber": phoneNumber,
      "createdAt": createdAt,
    };
  }
}
