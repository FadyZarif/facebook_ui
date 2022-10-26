import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_ui/styles/palette.dart';
import 'package:flutter/material.dart';

import '../models/models.dart';

class ProfileAvatar extends StatelessWidget {
  final User user;
  final bool isOnline;
  final bool hasBorder;
  const ProfileAvatar({Key? key, required this.user,this.isOnline = false,this.hasBorder=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: Palette.facebookBlue,
          child: CircleAvatar(
            radius: hasBorder? 17 : 20,
            backgroundColor: Colors.grey[200],
            backgroundImage: CachedNetworkImageProvider(
              user.imageUrl
            ),
          ),
        ),
        isOnline? CircleAvatar(
          radius: 6,
          backgroundColor: Colors.white,
          child: const CircleAvatar(
            radius: 4,
            backgroundColor: Palette.online,
          ),
        ):
            SizedBox.shrink()
      ],
    );
  }
}
