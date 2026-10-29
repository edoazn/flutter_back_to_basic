import 'package:flutter/material.dart';

class GameListCustom extends StatelessWidget {
  final String title, subTitle;
  final IconData? leadingIcon, trailingIcon;
  final Color? listTileColor, iconColor;

  const GameListCustom({
    super.key,
    required this.title,
    required this.subTitle,
    this.leadingIcon,
    this.trailingIcon,
    this.listTileColor,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: ListTile(
        tileColor: listTileColor,
        textColor: Colors.white,
        iconColor: iconColor,
        leading: Icon(leadingIcon),
        title: Text(title),
        subtitle: Text(subTitle),
        trailing: Icon(trailingIcon),
        shape: ContinuousRectangleBorder(
          side: BorderSide(color: Colors.teal, width: 2),
          borderRadius: BorderRadiusGeometry.circular(16.0),
        ),
      ),
    );
  }
}
