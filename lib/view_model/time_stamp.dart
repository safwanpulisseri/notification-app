String formatTimestamp(String timestamp) {
  final parsedDate = DateTime.parse(timestamp);
  final now = DateTime.now();
  final difference = now.difference(parsedDate);

  if (difference.inDays > 365) {
    int years = (difference.inDays / 365).floor();
    return years == 1 ? '1 year ago' : '$years years ago';
  } else if (difference.inDays > 30) {
    int months = (difference.inDays / 30).floor();
    return months == 1 ? '1 month ago' : '$months months ago';
  } else if (difference.inDays > 1) {
    return '${difference.inDays} days ago';
  } else if (difference.inDays == 1) {
    return '1 day ago';
  } else if (difference.inHours >= 1) {
    return difference.inHours == 1 ? '1 hour ago' : '${difference.inHours} hours ago';
  } else if (difference.inMinutes >= 1) {
    return difference.inMinutes == 1 ? '1 min ago' : '${difference.inMinutes} mins ago';
  } else {
    return 'Just now';
  }
}