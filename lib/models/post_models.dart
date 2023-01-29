import 'package:facebookclone/models/user_model.dart';

class Post {
  final User user;
  final String caption;
  final String timeAgo;
  final String imageUri;
  final int link;
  final int comments;
  final int shares;

  const Post(
      {required this.user,
      required this.imageUri,
      required this.caption,
      required this.timeAgo,
      required this.link,
      required this.comments,
      required this.shares});
}
