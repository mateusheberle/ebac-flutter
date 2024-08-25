class User {
  final int id;
  final int userId;
  final String title;
  final bool completed;

  User({
    required this.id,
    required this.userId,
    required this.title,
    required this.completed,
  });

  factory User.fromJson(Map json) {
    return User(
      id: json['id'],
      userId: json['userId'],
      title: json['title'],
      completed: json['completed'],
    );
  }

  Map toJson() {
    return {
      'id': id,
      'userId': userId,
      'title': title,
      'completed': completed,
    };
  }

  @override
  String toString() {
    return 'Id: $id,\n UserId: $userId,\n Title: $title,\n Completed: $completed';
  }
}
