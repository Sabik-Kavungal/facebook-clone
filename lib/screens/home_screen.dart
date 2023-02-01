import 'package:facebookclone/config/global_variables.dart';
import 'package:facebookclone/data/datas.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../models/post_models.dart';
import '../widgets/circle_button.dart';
import '../widgets/create_post_container.dart';
import '../widgets/post_container.dart';
import '../widgets/rooms.dart';
import '../widgets/stories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _CustomAppBar(),
    );
  }
}

class _CustomAppBar extends StatelessWidget {
  const _CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.white,
          title: const Text(
            "facebook",
            style: TextStyle(
                color: GlobalVariable.facebookBlue,
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
                letterSpacing: -1.2),
          ),
          centerTitle: false,
          //app bar scrolling
          floating: true,
          actions: [
            CircleButton(
              icon: Icons.search,
              iconSize: 30.0,
              onPressed: () => print('Search'),
            ),
            CircleButton(
              icon: Icons.message_outlined,
              iconSize: 30.0,
              onPressed: () => print('Message'),
            )
          ],
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        const SliverToBoxAdapter(
          child: CreatePostContainer(currentUser: currentUser),
        ),
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
          sliver: SliverToBoxAdapter(
            child: Rooms(onlineUsers: onlineUsers),
          ),
        ),

        SliverPadding(
          padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
          sliver: SliverToBoxAdapter(
            child: Stories(currentUser: currentUser,stories : stories),
          ),
        ),
        SliverList(delegate: SliverChildBuilderDelegate((context, index){
          final Post post = posts[index];
          return PostContainer(post:post);
        },
        childCount: posts.length,
        ))
      ],
    );
  }
}
