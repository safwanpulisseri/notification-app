class NotificationsRemoteModel {
  String image;
  String title;
  String body;
  String timestamp;

  NotificationsRemoteModel({
    required this.image,
    required this.title,
    required this.body,
    required this.timestamp,
  });

  factory NotificationsRemoteModel.fromJson(Map<String, dynamic> json) {
    return NotificationsRemoteModel(
      image: json['image'].toString(),
      title: json['title'].toString(),
      body: json['body'].toString(),
      timestamp: json['timestamp'].toString(),
    );
  }
}
