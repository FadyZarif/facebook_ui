import 'package:facebook_ui/models/models.dart';
import 'package:facebook_ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../styles/palette.dart';

class CustomAppBar extends StatelessWidget {
  final User currentUser;
  final List<IconData> icons;
  final int selectedIndex;
  final Function(int index) onTap;
  const CustomAppBar({Key? key, required this.currentUser, required this.icons, required this.selectedIndex, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 65,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const[
          BoxShadow(color: Colors.black12,offset: Offset(0, 2),blurRadius: 4)
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text('fodbook',style: TextStyle(
              fontSize: 32,
                color: Palette.facebookBlue,
                letterSpacing: -1.2,fontWeight: FontWeight.bold),),
          ),
          Container(
            width: 600,
            height: double.infinity,
            child: CustomTabBar(
              onTap: onTap,
              icons: icons,
              selectedIndex: selectedIndex,
                isBottomIndicator: true
            ),
          ),
          Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ProfileAvatar(user: currentUser),
                  SizedBox(width: 6,),
                  Text(currentUser.name,style: TextStyle(fontSize: 16),),
                  SizedBox(width: 6,),
                  CircleButton(icon: Icons.search, iconSize: 25, onPressed: () {}),
                  CircleButton(
                      icon: MdiIcons.facebookMessenger,
                      iconSize: 25,
                      onPressed: () {}),
                ],
              )
          )
          
        ],
      ),
    );
  }
}
