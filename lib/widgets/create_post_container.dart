import 'package:flutter/material.dart';
import '../models/user_model.dart';

class CreatePostContainer extends StatelessWidget {
  const CreatePostContainer({Key? key, required this.currentUser})
      : super(key: key);
  final User currentUser;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20.0,
                backgroundColor: Colors.grey[200],
                backgroundImage: NetworkImage(currentUser.imageUrl),
              ),
              const SizedBox(width: 8.0),
              const Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'what\'s on your mind?',
                      border: InputBorder.none),
                ),
              )
            ],
          ),
          const Divider(
            height: 10.0,
            thickness: 0.5,
          ),
          SizedBox(
            height: 40.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                _CustomTextButton(
                  text: "Live",
                  textIcon: Icons.videocam,
                  color: Colors.red,
                ),
                VerticalDivider(
                  width: 8.0,
                ),
                _CustomTextButton(
                  text: "Photo",
                  textIcon: Icons.photo_library,
                  color: Colors.green,
                ),
                VerticalDivider(
                  width: 8.0,
                ),
                _CustomTextButton(
                  text: "Room",
                  textIcon: Icons.video_call,
                  color: Colors.purpleAccent,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _CustomTextButton extends StatelessWidget {
  const _CustomTextButton({
    Key? key,
    required this.textIcon,
    required this.text,
    this.color,
  }) : super(key: key);
  final IconData textIcon;
  final String text;
  final dynamic color;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
        onPressed: () {},
        icon: Icon(
          textIcon,
          color: color,
        ),
        label: Text(
          text,
          style: TextStyle(color: Colors.black),
        ));
  }
}
