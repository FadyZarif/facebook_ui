import 'package:facebook_ui/data/data.dart';
import 'package:facebook_ui/styles/palette.dart';
import 'package:facebook_ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../models/models.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Palette.scaffold,
        body: Responsive(
          desktop: _HomeScreenDesktop(),
          mobile: _HomeScreenMobile(),
        ),
      ),
    );
  }
}

class _HomeScreenMobile extends StatelessWidget {
  const _HomeScreenMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverAppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark,
          ),
          backgroundColor: Colors.white,
          title: const Text(
            'fodbook',
            style: TextStyle(
                color: Palette.facebookBlue,
                fontSize: 28,
                fontWeight: FontWeight.bold,
                letterSpacing: -1.2),
          ),
          floating: true,
          actions: [
            CircleButton(icon: Icons.search, iconSize: 25, onPressed: () {}),
            CircleButton(
                icon: MdiIcons.facebookMessenger,
                iconSize: 25,
                onPressed: () {}),
          ],
        ),
        SliverToBoxAdapter(
          child: CreatePostContainer(
            currentUser: currentUser,
          ),
        ),
        SliverPadding(
            padding: EdgeInsetsDirectional.only(
                start: 0, end: 0, top: 10, bottom: 5),
            sliver: SliverToBoxAdapter(
                child: Rooms(
              onlineUsers: onlineUsers,
            ))),
        SliverPadding(
            padding: EdgeInsetsDirectional.only(
                start: 0, end: 0, top: 10, bottom: 5),
            sliver: SliverToBoxAdapter(
                child: Stories(currentUser: currentUser, stories: stories))),
        SliverList(
            delegate: SliverChildBuilderDelegate(
          (context, i) {
            final Post post = posts[i];
            return PostContainer(post: post);
          },
          childCount: posts.length,
        ))
      ],
    );
  }
}

class _HomeScreenDesktop extends StatelessWidget {
  const _HomeScreenDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
            flex: 2,
            child: MoreOptionsList(currentUser:currentUser),
        ),
        const Spacer(),
        Container(
          width: 600,
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverPadding(
                  padding: EdgeInsetsDirectional.only(
                      start: 0, end: 0, top: 10, bottom: 5),
                  sliver: SliverToBoxAdapter(
                      child:
                          Stories(currentUser: currentUser, stories: stories))),
              SliverToBoxAdapter(
                child: CreatePostContainer(
                  currentUser: currentUser,
                ),
              ),
              SliverPadding(
                  padding: EdgeInsetsDirectional.only(
                      start: 0, end: 0, top: 10, bottom: 5),
                  sliver: SliverToBoxAdapter(
                      child: Rooms(
                    onlineUsers: onlineUsers,
                  ))),
              SliverList(
                  delegate: SliverChildBuilderDelegate(
                (context, i) {
                  final Post post = posts[i];
                  return PostContainer(post: post);
                },
                childCount: posts.length,
              ))
            ],
          ),
        ),
        const Spacer(),
        Flexible(
            flex: 2,
            child: ContactList(onlineUsers: onlineUsers),
        )
      ],
    );
  }
}
