import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_responsive_ui/config/palette.dart';
import 'package:flutter_facebook_responsive_ui/models/models.dart';
import 'package:flutter_facebook_responsive_ui/widgets/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'profile_avatar.dart';

class NotificationContainer extends StatelessWidget {
  final NotificationModel notification;

  const NotificationContainer({
    Key key,
    @required this.notification,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 325,
      height: 110,
      child: Card(
          elevation:5.0,
          color: const Color(0xffFFFFFF),
          shadowColor: Color.fromRGBO(0, 0, 0, 0.098066),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14.0),
          ),
          margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 14.0),
          child: InkWell(
            onTap: () => print('Notification is tapped for now'),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      _NotificationHeader(notification: notification),
                    ],
                  ),
                ),
              ],
            ),
          ),

        ),
    );
  }
}

class _NotificationHeader extends StatelessWidget {
  final NotificationModel notification;


  const _NotificationHeader({
    Key key,
    @required this.notification,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ProfileAvatar(imageUrl: notification.profilePhoto),
        const SizedBox(width: 8.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(notification.body,
                    style: const TextStyle(
                    fontFamily: 'Roboto' ,
                    letterSpacing: 0.11,
                    fontSize: 14,
                    color: Color(0xff000000)
                    )),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      '${notification.timeAgo} *',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 12.0,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}





