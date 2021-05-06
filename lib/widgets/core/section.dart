import 'package:flutter/material.dart';
import 'package:flutter_text_helpers/flutter_text_helpers.dart';
import 'package:yellow_app/consts/theme.dart';
import 'package:yellow_app/widgets/core/spacer.dart';

class CoreSection extends StatelessWidget {
  CoreSection({
    required this.title,
    required this.child,
    this.padContent = true,
  });

  final String title;
  final Widget child;
  final bool padContent;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padContent
          ? EdgeInsets.symmetric(horizontal: ThemeConsts.M_PAD)
          : EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: !padContent
                  ? EdgeInsets.symmetric(horizontal: ThemeConsts.M_PAD)
                  : EdgeInsets.zero,
              child: HeadlineText1(title)),
          CoreSpacer(height: ThemeConsts.M_PAD),
          child,
        ],
      ),
    );
  }
}
