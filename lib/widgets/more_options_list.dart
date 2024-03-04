import 'package:facebook_ui/models/models.dart';
import 'package:facebook_ui/styles/palette.dart';
import 'package:facebook_ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';



class MoreOptionsList extends StatelessWidget {
  final List<List> _moreOptionsList =  [
    [MdiIcons.shieldAccount, Colors.deepPurple, 'COVID-19 Info Center'],
    [MdiIcons.accountMultiple, Colors.cyan, 'Friends'],
    [MdiIcons.facebookMessenger, Palette.facebookBlue, 'Messenger'],
    [MdiIcons.flag, Colors.orange, 'Pages'],
    [MdiIcons.storefront, Palette.facebookBlue, 'Marketplace'],
    [Icons.ondemand_video, Palette.facebookBlue, 'Watch'],
    [MdiIcons.calendarStar, Colors.red, 'Events'],
  ];
  final User currentUser;

   MoreOptionsList({Key? key, required this.currentUser})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: _moreOptionsList.length + 1,
          itemBuilder: (context, i) {
            if (i == 0) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: [
                    ProfileAvatar(user: currentUser),
                    SizedBox(width: 6,),
                    Text(currentUser.name, style: TextStyle(fontSize: 16),),
                  ],
                ),
              );
            }
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  Icon(_moreOptionsList[i-1][0],color: _moreOptionsList[i-1][1],size: 32,),
                  SizedBox(width: 6,),
                  Expanded(child: Text(_moreOptionsList[i-1][2], style: TextStyle(fontSize: 16),overflow: TextOverflow.ellipsis,)),
                ],
              ),
            );
          },
        )
    );
  }
}
