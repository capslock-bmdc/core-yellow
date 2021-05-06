import 'package:flutter/material.dart';
import 'package:flutter_text_helpers/flutter_text_helpers.dart';
import 'package:yellow_app/consts/theme.dart';
import 'package:yellow_app/models/optionData.dart';

class CoreOption extends StatelessWidget {
  CoreOption({
    required this.data,
    required this.isFirst,
    required this.isLast,
  });

  final OptionData data;
  final bool isFirst;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: ThemeConsts.M_PAD, vertical: ThemeConsts.M_PAD),
      margin: EdgeInsets.only(bottom: isLast ? 0 : ThemeConsts.XS_PAD),
      decoration: BoxDecoration(
          color: ThemeConsts.CARD_BACKGROUND_COLOR,
          borderRadius: BorderRadius.vertical(
            top: isFirst ? Radius.circular(ThemeConsts.M_PAD) : Radius.zero,
            bottom: isLast ? Radius.circular(ThemeConsts.M_PAD) : Radius.zero,
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BodyText2(data.title),
        ],
      ),
    );
  }
}
