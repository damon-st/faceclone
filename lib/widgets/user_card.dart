// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:faceclone/widgets/profile_avatar.dart';
import 'package:flutter/material.dart';

import 'package:faceclone/models/models.dart';

class UserCard extends StatelessWidget {
  const UserCard({
    Key? key,
    required this.user,
  }) : super(key: key);
  final User user;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ProfileAvatar(
            imageUrl: user.imageUrl,
          ),
          const SizedBox(
            width: 6.0,
          ),
          Flexible(
            child: Text(
              user.name,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 16.0),
            ),
          )
        ],
      ),
    );
  }
}
