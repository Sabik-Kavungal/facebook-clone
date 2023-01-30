import 'package:facebookclone/widgets/profile_avatar.dart';
import 'package:flutter/material.dart';
import '../config/global_variables.dart';
import '../models/user_model.dart';

class Rooms extends StatelessWidget {
  const Rooms({Key? key, required this.onlineUsers}) : super(key: key);
  final List<User> onlineUsers;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65.0,
      color: Colors.white,
      child: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0),
          scrollDirection: Axis.horizontal,
          itemCount: 1 + onlineUsers.length,
          itemBuilder: (context, index) {
            if (index == 0) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: _CreateRoomButton(),
              );
            }
            final User user = onlineUsers[index - 1];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ProfileAvatar(imageUrl: user.imageUrl, isActive: true),
            );
          }),
    );
  }
}

class _CreateRoomButton extends StatelessWidget {
  const _CreateRoomButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 113,
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.blueAccent, width: 3.0),
          borderRadius: const BorderRadius.all(Radius.circular(19.0))),
      child: Center(
        child: Row(
          children: [
            ShaderMask(
              shaderCallback: (rect) =>
                  GlobalVariable.createRoomGradient.createShader(rect),
              child: const Icon(
                Icons.video_call,
                size: 30.0,
                color: Colors.red,
              ),
            ),
            const SizedBox(
              width: 4.0,
            ),
            Expanded(
              child: const Text(
                "Create\nRoom",
                style: TextStyle(color: GlobalVariable.facebookBlue,fontSize: 12),
              ),
            )
          ],
        ),
      ),
    );
  }
}
