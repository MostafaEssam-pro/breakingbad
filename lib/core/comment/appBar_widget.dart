
import 'package:flutter/material.dart';
class WidgetAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color? backgroundColor;
  final Color? textIconColor;
  final String? icon;
  final String? title;
  final double? height;
  final List<Widget>? menuItem;
  final bool hideBack;

  WidgetAppBar({
    this.backgroundColor = Colors.black,
    this.textIconColor = Colors.amber,
    this.icon,
    this.title = '',
    this.menuItem,
    this.height: kToolbarHeight,
    this.hideBack = false,
  });

  @override
  Size get preferredSize => Size.fromHeight(height!);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: menuItem,
      toolbarHeight: preferredSize.height,
      iconTheme: IconThemeData(
        color: textIconColor,
      ),
      leading: hideBack
          ? Container()
          : icon == null
              ? BackButton()
              : IconButton(
                  icon: Image.asset(
                    icon!,
                    height: 18,
                    width: 18,
                  ),
                  onPressed: () {
                    Navigator.pop(context, true);
                  },
                ),
      title: Text(
        title!,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: textIconColor,
        ),
      ),
      backgroundColor: backgroundColor,
      centerTitle: true,
    );
  }
}



