import 'package:facebookclone/widgets/profile_avatar.dart';
import 'package:flutter/material.dart';

import '../models/story_model.dart';
import '../models/user_model.dart';

class Stories extends StatelessWidget {
  const Stories({Key? key, required this.currentUser, required this.stories})
      : super(key: key);
  final User currentUser;
  final List<Story> stories;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      color: Colors.white,
      child: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
          scrollDirection: Axis.horizontal,
          itemCount: stories.length,
          itemBuilder: (context, index) {
            final Story story = stories[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: _StoryCard(
                story,
                currentUser,
              ),
            );
          }),
    );
  }
}

class _StoryCard extends StatelessWidget {
  const _StoryCard(this.story, this.currentUser, {this.isAddStory = false});
  final bool isAddStory;
  final User currentUser;
  final Story story;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            height: double.infinity,
            width: 120,
            decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    image: NetworkImage(story.imageUrl), fit: BoxFit.fill),
                borderRadius: const BorderRadius.all(Radius.circular(10.0)))),
        Positioned(
            top: 5.0,
            left: 5.0,
            child: ProfileAvatar(
              imageUrl: currentUser.imageUrl,
            )),
        Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                story.user.name,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 12.8,),
              ),
            ))
      ],
    );
  }
}
