// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:faceclone/config/palette.dart';
import 'package:faceclone/widgets/profile_avatar.dart';
import 'package:faceclone/widgets/responsive.dart';
import 'package:flutter/material.dart';

import '../models/models.dart';

class Rooms extends StatelessWidget {
  const Rooms({
    Key? key,
    required this.onlineUsers,
  }) : super(key: key);
  final List<User> onlineUsers;
  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    return Card(
      margin: EdgeInsets.symmetric(horizontal: isDesktop ? 5.0 : 0.0),
      elevation: isDesktop ? 1.0 : 0.0,
      shape: isDesktop
          ? RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
          : null,
      child: Container(
        height: 60.0,
        color: Colors.white,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0),
            itemCount: 1 + onlineUsers.length,
            itemBuilder: (c, index) {
              if (index == 0) {
                return const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: _CreateRoomButton(),
                );
              }
              final user = onlineUsers[index - 1];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ProfileAvatar(
                  imageUrl: user.imageUrl,
                  isActive: true,
                ),
              );
            }),
      ),
    );
  }
}

class _CreateRoomButton extends StatelessWidget {
  const _CreateRoomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: ButtonStyle(
        side: MaterialStateProperty.all(
            BorderSide(color: Colors.blueAccent[100]!, width: 3.0)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            side: BorderSide(width: 3.0, color: Colors.blueAccent[100]!),
            borderRadius: BorderRadius.circular(
              30.0,
            ),
          ),
        ),
      ),
      child: Row(
        children: [
          ShaderMask(
            shaderCallback: (rec) =>
                Palette.createRoomGradient.createShader(rec),
            child: const Icon(
              Icons.video_call,
              size: 35,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 4.0,
          ),
          const Text(
            "Create\nRoom",
            style: TextStyle(
              color: Palette.facebookBlue,
            ),
          )
        ],
      ),
    );
  }
}
