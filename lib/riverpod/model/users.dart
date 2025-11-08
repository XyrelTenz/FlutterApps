class User {
  final String name;
  final String email;

  const User({this.email = '', this.name = ''});

  User copyWith({String? name, String? email}) {
    return User(name: name ?? this.name, email: email ?? this.email);
  }
}
