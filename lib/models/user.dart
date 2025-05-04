class User {
  final String id;
  final String name;
  final String email;
  final String gender;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.gender,
  });

  // Factory method to create a User from JSON
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] as String,
      name: json['title'] as String,
      email: json['email'] as String,
      gender: json['gender'] as String,
    );
  }

  // Method to convert a User to JSON
  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name, 'email': email, 'gender': gender};
  }
}
