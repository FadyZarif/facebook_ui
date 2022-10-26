import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_ui/models/models.dart';
import 'package:facebook_ui/styles/palette.dart';
import 'package:facebook_ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  final User currentUser;
  final List<Story> stories;

  const Stories({Key? key, required this.currentUser, required this.stories})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.white,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        scrollDirection: Axis.horizontal,
        itemCount: stories.length + 1,
        itemBuilder: (context, i) {
          if (i == 0) {
            return _StoryCard(
              user: currentUser,
              isAddStory: true,
            );
          }
          return _StoryCard(
            user: currentUser,
            isAddStory: false,
            story: stories[i - 1],
          );
        },
      ),
    );
  }
}

class _StoryCard extends StatelessWidget {
  final bool isAddStory;
  final User user;
  final Story? story;

  const _StoryCard(
      {Key? key, required this.user, this.story, required this.isAddStory})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadiusDirectional.circular(10),
            child: CachedNetworkImage(
              imageUrl: isAddStory ? user.imageUrl : story!.imageUrl,
              width: 110,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: 110,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: Palette.storyGradient,
              borderRadius: BorderRadiusDirectional.circular(10),
            ),
          ),
          Padding(
              padding: EdgeInsetsDirectional.only(top: 8, start: 8),
              child: isAddStory
                  ? CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20,
                      child: Icon(
                        Icons.add,
                        size: 30,
                        color: Palette.facebookBlue,
                      ))
                  : ProfileAvatar(
                  user: story!.user,
                hasBorder: !story!.isViewed,
              )
          ), 
          Positioned(
            bottom: 8,
            left: 8,
            right: 8,
            child: Text(
              overflow: TextOverflow.fade,
              isAddStory? 'Add to Story' : story!.user.name,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,

              ),
            ),
          )
        ],
      ),
    );
  }
}
