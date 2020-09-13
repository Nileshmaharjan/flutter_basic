import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_facebook_responsive_ui/config/palette.dart';
import 'package:flutter_facebook_responsive_ui/widgets/list_notification.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter_facebook_responsive_ui/data/data.dart';
import '../widgets/widgets.dart';
import '../models/models.dart';



class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            brightness: Brightness.light,
            backgroundColor: Colors.white,
            title: Text(
              'facebook',
              style: const TextStyle(
                color: Palette.facebookBlue,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                letterSpacing: -1.2,
              ),
            ),
            centerTitle: false,
            floating: true,
            actions: [
              CircleButton(icon: Icons.search, iconSize: 30.0, onPressed: () => print('Search')),
              CircleButton(icon: MdiIcons.facebookMessenger, iconSize: 30.0, onPressed: () => print('Messenger')),
            ],
          ),
          SliverPadding(
            padding: const EdgeInsets.all(8.0),
            sliver: SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
                  final NotificationModel notification = notifications[index];

                  return NotificationContainer(notification: notification);
                },
                    childCount: notifications.length
                )
            ),
          )

        ],
      ),
    );
  }
}
