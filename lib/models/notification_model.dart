import 'package:meta/meta.dart';
import 'package:flutter_facebook_responsive_ui/models/models.dart';

class NotificationModel {
  final String body;
  final String timeAgo;
  final String profilePhoto;

  const NotificationModel({
    @required this.body,
    @required this.timeAgo,
    @required this.profilePhoto
});

}
