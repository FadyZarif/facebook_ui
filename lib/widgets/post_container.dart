import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../models/models.dart';

class PostContainer extends StatelessWidget {
  final Post post;
  const PostContainer({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:BoxDecoration(
        borderRadius: Responsive.isDesktop(context)? BorderRadiusDirectional.circular(10):null,
        color: Colors.white,
          boxShadow: Responsive.isDesktop(context)? [
            BoxShadow(color: Colors.black12,offset: Offset(0, 2),blurRadius: 4)
          ] : null
      ),
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.symmetric(vertical: 8,),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _PostHeader(post:post),
                SizedBox(
                  height: 4,
                ),
                Text(post.caption),
              ],
            ),
          ),
          post.imageUrl != null ? Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: CachedNetworkImage(imageUrl: post.imageUrl!),
          ) : SizedBox.shrink(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: _PostFooter(post:post),
          ),
        ],
      ),
    );
  }
}

class _PostHeader extends StatelessWidget {
  final Post post;
  const _PostHeader({Key? key, required this.post}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ProfileAvatar(
          user: post.user,
        ),
        SizedBox(
          width: 8,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(post.user.name,style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(
              height: 2,
            ),
            Row(
              children: [
                Text(post.timeAgo,style: Theme.of(context).textTheme.caption,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3.0),
                  child: CircleAvatar(
                    radius: 2,
                    backgroundColor: Colors.grey,
                  ),
                ),
                Icon(Icons.public,size: 12,color: Colors.grey,)
              ],
            )
          ],
        ),
        Spacer(),
        IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz))
      ],
    );
  }
}

class _PostFooter extends StatelessWidget {
  final Post post;
  const _PostFooter({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 10,
                child: Icon(Icons.thumb_up,size: 10,color: Colors.white,)),
            SizedBox(width: 4,),
            Text('${post.likes}'),
            Spacer(),
            Text('${post.comments} Comments'),
            SizedBox(width: 8,),
            Text('${post.shares} Shares'),
          ],
        ),
        const Divider(
          height: 10,
          thickness: 0.5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MaterialButton(
              onPressed: (){},
              child: Row(
                children: const [
                  Icon(Icons.thumb_up_alt_outlined,color: Colors.grey,),
                  SizedBox(
                    width: 3,
                  ),
                  Text('Like')
                ],
              ),
            ),
            const VerticalDivider(
              width: 8,
            ),
            MaterialButton(
              onPressed: (){},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(MdiIcons.commentOutline,color: Colors.grey,),
                  SizedBox(
                    width: 3,
                  ),
                  Text('Comment')
                ],
              ),
            ),
            const VerticalDivider(width: 8,
            ),
            MaterialButton(
              onPressed: (){},
              child: Row(
                children: const [
                  Icon(MdiIcons.shareOutline,color: Colors.grey,),
                  SizedBox(
                    width: 3,
                  ),
                  Text('Share')
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}


