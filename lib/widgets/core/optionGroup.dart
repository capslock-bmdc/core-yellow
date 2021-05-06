import 'package:flutter/material.dart';
import 'package:yellow_app/models/optionData.dart';
import 'package:yellow_app/widgets/core/option.dart';
import 'package:yellow_app/extension/iterable.dart';

class CoreOptionGroup extends StatelessWidget {
  CoreOptionGroup({
    required this.optionsData,
  });

  final List<OptionData> optionsData;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: optionsData
          .mapIndexed((OptionData data, int index) => CoreOption(
                data: data,
                isFirst: index == 0,
                isLast: index == (optionsData.length - 1),
              ))
          .toList(),
    );
  }
}
