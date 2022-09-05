// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:faceclone/widgets/user_card.dart';
import 'package:flutter/material.dart';

import '../models/models.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({
    Key? key,
    required this.users,
  }) : super(key: key);
  final List<User> users;
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxWidth: 280.0,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  "Contacts",
                  style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Icon(
                Icons.search,
                color: Colors.grey[600],
              ),
              const SizedBox(
                width: 8.0,
              ),
              Icon(
                Icons.more_horiz,
                color: Colors.grey[600],
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
                itemCount: users.length,
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                itemBuilder: (c, index) {
                  final user = users[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: UserCard(user: user),
                  );
                }),
          )
        ],
      ),
    );
  }
}
