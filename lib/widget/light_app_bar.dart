// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:custom_paint/constants/colors.dart';
import 'package:custom_paint/constants/text_theme.dart';
import 'package:flutter/material.dart';

class LightAppBar extends StatelessWidget implements PreferredSizeWidget {
  const LightAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);
  final title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(
        color: AppColors.white,
        size: 22,
      ),
      title: title is String
          ? Text(
              title,
              style: themeData.textTheme.headline6?.copyWith(
                color: AppColors.white,
              ),
            )
          : title is Widget
              ? title
              : Container(),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
