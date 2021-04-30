class User {
  User({
    this.id,
    this.firstName,
    this.lastName,
    this.token,
    this.email,
    this.userType,
    this.role,
    this.profileImage,
    this.tz,
    this.phone,
  });

  final String? id;
  final String? firstName;
  final String? lastName;
  final String? token;
  final String? email;
  final String? userType;
  final String? role;
  final String? profileImage;
  final String? tz;
  final String? phone;

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'],
      firstName: map['firstName'],
      lastName: map['lastName'],
      token: map['token'],
      email: map['email'],
      userType: map['userType'],
      role: map['role'],
      profileImage: map['profileImage'],
      tz: map['tz'],
      phone: map['phone'],
    );
  }

  User clone({
    String? id,
    String? firstName,
    String? lastName,
    String? token,
    String? email,
    String? userType,
    String? role,
    String? profileImage,
    String? tz,
    String? phone,
  }) {
    return User(
      id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      token: token ?? this.token,
      email: email ?? this.email,
      userType: userType ?? this.userType,
      role: role ?? this.role,
      profileImage: profileImage ?? this.profileImage,
      tz: tz ?? this.tz,
      phone: phone ?? this.phone,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'firstName': firstName,
      'lastName': lastName,
      'token': token,
      'email': email,
      'userType': userType,
      'role': role,
      'profileImage': profileImage,
      'tz': tz,
      'phone': phone,
    };
  }
}
