// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:faceclone/config/palette.dart';
import 'package:faceclone/widgets/circle_button.dart';
import 'package:faceclone/widgets/custom_tab_bar.dart';
import 'package:faceclone/widgets/user_card.dart';
import 'package:flutter/material.dart';

import 'package:faceclone/models/models.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    required this.currentUser,
    required this.icons,
    required this.selectedIndex,
    required this.onTap,
  }) : super(key: key);
  final User currentUser;
  final List<IconData> icons;
  final int selectedIndex;
  final ValueChanged<int> onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65.0,
      decoration: const BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(color: Colors.black12, offset: Offset(0, 2), blurRadius: 4.0)
      ]),
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(
            child: Text(
              "facebook",
              style: TextStyle(
                  color: Palette.facebookBlue,
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -1.2),
            ),
          ),
          SizedBox(
            width: 600.0,
            height: double.infinity,
            child: CustomTabBar(
                isBottomIndicator: true,
                icons: icons,
                selectedIndex: selectedIndex,
                onTap: onTap),
          ),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              UserCard(
                user: currentUser,
              ),
              const SizedBox(
                width: 12.0,
              ),
              CircleButton(
                icon: Icons.search,
                iconSiz: 30.0,
                onPressed: () {},
              ),
              CircleButton(
                icon: MdiIcons.facebookMessenger,
                iconSiz: 30.0,
                onPressed: () {},
              ),
            ],
          ))
        ],
      ),
    );
  }
}
