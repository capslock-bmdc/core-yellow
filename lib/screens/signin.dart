import 'package:flutter/material.dart';
import 'package:flutter_text_helpers/flutter_text_helpers.dart';

import 'package:yellow_app/apis/index.dart';
import 'package:yellow_app/consts/theme.dart';
import 'package:yellow_app/models/user.dart';
import 'package:yellow_app/screens/sent.dart';
import 'package:yellow_app/utils/storage.dart';
import 'package:yellow_app/widgets/core/app_icon.dart';
import 'package:yellow_app/widgets/core/button.dart';
import 'package:yellow_app/widgets/core/spacer.dart';
import 'package:yellow_app/widgets/core/textField.dart';
import 'package:yellow_app/extension/iterable.dart';

class SigninScreen extends StatefulWidget {
  @override
  _SigninScreenState createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  bool _loading = false;
  String _email = '';

  void _onSentEmail(BuildContext context) async {
    setState(() => _loading = true);
    try {
      User user = User(email: _email, id: '608b1ea6b175de8bf7fc10ba');
      await storageUtil.setUser(user);
      await api.auth.tokenGet(_email);
    } catch (e) {}
    Navigator.of(context).push(
        MaterialPageRoute(builder: (BuildContext context) => SentScreen()));
    setState(() => _loading = false);
  }

  Widget _signinForm(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeadlineText1('SIGN IN'),
        CoreTextField(
          value: _email,
          onChanged: (String email) => setState(() => _email = email),
          textInputType: TextInputType.emailAddress,
          textInputAction: TextInputAction.go,
          onSubmitted: (String text) => _onSentEmail(context),
        ),
        CaptionText(
            'The old posters and signs in the traditional Montserrat neighborhood of Buenos Aires inspired Julieta Ulanovsky to design this typeface and rescue the beauty of urban typography that emerged in the first half of the twentieth century.'),
      ].addBetween(CoreSpacer(height: ThemeConsts.L_PAD)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: ThemeConsts.XL_PAD,
            horizontal: ThemeConsts.L_PAD,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CoreAppIcon(),
              _signinForm(context),
              if (!_loading)
                Center(
                  child: CoreButton(
                    text: 'Send Email',
                    onTap: () => _onSentEmail(context),
                  ),
                ),
              if (_loading) Center(child: CircularProgressIndicator()),
            ],
          ),
        ),
      ),
    );
  }
}
