class User {
  final String name;
  final String email;

  const User({this.name = '', this.email = ''});

  User copyWith({String? name, String? email}) {
    return User(name: name ?? this.name, email: email ?? this.email);
  }

  @override
  String toString() => 'User(name: $name, email: $email)';
}
