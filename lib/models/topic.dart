class Topic {
  final int id;
  final String title;
  final String imagePath;

  const Topic({
    required this.id,
    required this.title,
    required this.imagePath,
  });

  factory Topic.fromMap(Map<String, dynamic> map) {
    return Topic(
      id : map['id'] as int,
      title : map['title'] as String,
      imagePath : map['image_path'] as String,
    );
  }
}