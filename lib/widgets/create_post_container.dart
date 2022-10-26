import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_ui/models/models.dart';
import 'package:flutter/material.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;

  const CreatePostContainer({Key? key, required this.currentUser})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding:
            const EdgeInsetsDirectional.only(end: 12, start: 12, top: 8, bottom: 0),
        color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 22,
                  backgroundColor: Colors.grey[200],
                  backgroundImage:
                      CachedNetworkImageProvider(currentUser.imageUrl),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration.collapsed(
                      hintText: 'What\'s on your mind?',
                    ),
                  ),
                )
              ],
            ),
            const Divider(
              height: 10,
              thickness: 0.5,
            ),
            Container(
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                    onPressed: (){},
                    child: Row(
                      children: const [
                         Icon(Icons.videocam,color: Colors.red,),
                         SizedBox(
                          width: 8,
                        ),
                         Text('Live')
                      ],
                    ),
                  ),
                  const VerticalDivider(
                    width: 8,
                  ),
                  MaterialButton(
                    onPressed: (){},
                    child: Row(
                      children: const [
                         Icon(Icons.photo_library,color: Colors.green,),
                         SizedBox(
                          width: 8,
                        ),
                         Text('Photo')
                      ],
                    ),
                  ),
                  const VerticalDivider(width: 8,
                  ),
                  MaterialButton(
                    onPressed: (){},
                    child: Row(
                      children: const [
                         Icon(Icons.video_call,color: Colors.purpleAccent,),
                         SizedBox(
                          width: 8,
                        ),
                         Text('Room')
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
