import 'package:facebook_ui/models/models.dart';
import 'package:facebook_ui/styles/palette.dart';
import 'package:facebook_ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Rooms extends StatelessWidget {
  final List<User> onlineUsers;

  const Rooms({Key? key, required this.onlineUsers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: Responsive.isDesktop(context)? BorderRadiusDirectional.circular(10):null,
          boxShadow: Responsive.isDesktop(context)? [
            BoxShadow(color: Colors.black12,offset: Offset(0, 2),blurRadius: 4)
          ] : null
      ),
      height: 66,
      child: ListView.builder(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 4),
          scrollDirection: Axis.horizontal,
          itemCount: 1 + onlineUsers.length,
          itemBuilder: (context, i) {
            if (i == 0) {
              return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                      child: _CreateRoomButton(),
              );
            }
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: ProfileAvatar(
                  user: onlineUsers[i-1],
                isOnline: true,

              ),
            );
          }),
    );
  }
}

class _CreateRoomButton extends StatelessWidget {
  const _CreateRoomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: (){},
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                )
            ),
          backgroundColor: MaterialStateProperty.all(
            Colors.white
          ),
          side: MaterialStateProperty.all<BorderSide>(
            BorderSide(
              width: 3,
              color: Color(0xff82b1ff)
            )
          ),
          textStyle: MaterialStateProperty.all<TextStyle>(
            TextStyle(color: Palette.facebookBlue)
          )
        ),
        child: Row(
          children: [
              ShaderMask(
                  shaderCallback: (rect) {
                   return Palette.createRoomGradient.createShader(rect);
                  },
                  child: Icon(Icons.video_call,size: 30,color: Colors.white,)
              ),
             SizedBox(width: 5,),
             Text('Create\nRoom')
          ],
        )
    );
  }
}

