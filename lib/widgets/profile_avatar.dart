import 'package:facebookclone/config/global_variables.dart';
import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({Key? key, required this.imageUrl, this.isActive = false})
      : super(key: key);
  final String imageUrl;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      CircleAvatar(
        radius: 20.0,
        backgroundColor: Colors.grey[200],
        backgroundImage: NetworkImage(imageUrl),
      ),
      isActive
          ? Positioned(
              bottom: 0.0,
              right: 0.0,
              child: Container(
                height: 15.0,
                width: 15.0,
                decoration: BoxDecoration(
                    color: GlobalVariable.online,
                    shape: BoxShape.circle,
                    border: Border.all(width: 2.0, color: Colors.white)),
              ))
          : const SizedBox.shrink()
    ]);
  }
}
