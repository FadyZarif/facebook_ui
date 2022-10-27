import 'package:facebook_ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../models/models.dart';

class ContactList extends StatelessWidget {
  final List<User> onlineUsers;
  const ContactList({Key? key, required this.onlineUsers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 280),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(child: Text('Contacts')),
                InkWell(onTap: (){}, child: Icon(Icons.search,color: Colors.black54,size: 15,)),
                SizedBox(width: 4,),
                InkWell(onTap: (){}, child: Icon(Icons.more_horiz,color: Colors.black54,size: 15,)),
              ],
            ),
            SizedBox(height: 4,),
            Expanded(
              child: ListView.builder(
                itemCount: onlineUsers.length,
                itemBuilder: (context,i)=>Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    children: [
                      ProfileAvatar(user: onlineUsers[i]),
                      SizedBox(width: 6,),
                      Text(onlineUsers[i].name,style: TextStyle(fontSize: 16),overflow: TextOverflow.ellipsis,),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
