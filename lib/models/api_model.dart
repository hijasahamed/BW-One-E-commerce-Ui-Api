class NotificationsApiModel {
  String image;
  String title;
  String body;
  String timestamp;

  NotificationsApiModel({
    required this.image,
    required this.title,
    required this.body,
    required this.timestamp,
  });

  factory NotificationsApiModel.fromJson(Map<String, dynamic> json) {
    return NotificationsApiModel(
      image: json['image'].toString(),
      title: json['title'].toString(),
      body: json['body'].toString(),
      timestamp: json['timestamp'].toString(),
    );
  }
}
