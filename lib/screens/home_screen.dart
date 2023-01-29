import 'package:facebookclone/config/global_variables.dart';
import 'package:facebookclone/data/datas.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/circle_button.dart';
import '../widgets/create_post_container.dart';

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
              onPressed: () => print('Search'),
            )
          ],
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        const SliverToBoxAdapter(
          child: CreatePostContainer(currentUser: currentUser),
        )
      ],
    );
  }
}
