import 'package:flutter/material.dart';
import 'package:yellow_app/consts/theme.dart';

class CoreTextField extends StatefulWidget {
  CoreTextField({
    this.hint,
    this.value = '',
    this.onChanged,
    this.onSubmitted,
    this.margin = EdgeInsets.zero,
    this.textInputAction = TextInputAction.done,
    this.textAlign = TextAlign.start,
    this.textInputType = TextInputType.text,
    this.obscureText = false,
    this.controller,
    this.autofocus = false,
    this.maxLines = 1,
  });

  final String? hint;
  final String? value;
  final EdgeInsets? margin;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final TextInputAction? textInputAction;
  final TextAlign textAlign;
  final TextInputType textInputType;
  final bool obscureText;
  final TextEditingController? controller;
  final bool autofocus;
  final int maxLines;

  @override
  _CoreTextFieldState createState() => _CoreTextFieldState();
}

class _CoreTextFieldState extends State<CoreTextField> {
  TextEditingController? _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller = widget.controller != null ? widget.controller : _controller;
    _controller!.text = widget.value ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ThemeConsts.CARD_BACKGROUND_COLOR,
        borderRadius: BorderRadius.circular(ThemeConsts.M_RADIUS),
      ),
      padding: EdgeInsets.symmetric(horizontal: ThemeConsts.S_PAD),
      child: TextField(
        maxLines: widget.maxLines,
        controller: _controller,
        onChanged: widget.onChanged,
        autofocus: widget.autofocus,
        style: Theme.of(context).textTheme.bodyText2,
        textInputAction: widget.textInputAction,
        textAlign: widget.textAlign,
        obscureText: widget.obscureText,
        keyboardType: widget.textInputType,
        onSubmitted: widget.onSubmitted ?? (string) {},
        decoration: InputDecoration(
          isDense: true,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(ThemeConsts.S_RADIUS),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(ThemeConsts.S_RADIUS),
            borderSide: BorderSide.none,
          ),
          hintText: widget.hint,
          hintStyle: Theme.of(context)
              .textTheme
              .bodyText2!
              .copyWith(color: ThemeConsts.DISABLED_TEXT_COLOR),
        ),
      ),
    );
  }
}
