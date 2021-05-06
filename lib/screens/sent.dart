import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_text_helpers/flutter_text_helpers.dart';

import 'package:yellow_app/apis/index.dart';
import 'package:yellow_app/consts/theme.dart';
import 'package:yellow_app/models/user.dart';
import 'package:yellow_app/screens/dashboard.dart';
import 'package:yellow_app/screens/splash.dart';
import 'package:yellow_app/utils/jwt.dart';
import 'package:yellow_app/utils/storage.dart';
import 'package:yellow_app/widgets/core/app_icon.dart';
import 'package:yellow_app/widgets/core/button.dart';
import 'package:yellow_app/widgets/core/spacer.dart';
import 'package:yellow_app/widgets/core/textField.dart';

class SentScreen extends StatefulWidget {
  @override
  _SentScreenState createState() => _SentScreenState();
}

class _SentScreenState extends State<SentScreen> {
  bool _loading = false;
  String _token = '';

  void _onGotToken(BuildContext context) async {
    setState(() => _loading = true);
    try {
      Map<String, dynamic> decodedToken = jwtUtil.decode(_token);
      User user = await storageUtil.getUser();
      String id = decodedToken['userId'];
      user = user.clone(token: _token, id: id);
      await storageUtil.setUser(user);
      if (user.id != null) {
        Response res = await api.user.get(user.id!, _token);
        dynamic resData = res.data;
        user = user.clone(
          firstName: resData['firstName'],
          lastName: resData['lastName'],
          userType: resData['userType'],
          role: resData['role'],
          profileImage: resData['profileImage'],
          tz: resData['tz'],
          phone: resData['phone'],
        );
        await storageUtil.setUser(user);
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => SplashScreen()));
      }
    } catch (e) {}
    Navigator.of(context).push(MaterialPageRoute(
        builder: (BuildContext context) => DashboardScreen()));
    setState(() => _loading = false);
  }

  Widget _signinForm(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BodyText2('We sent you a unique code, so...'),
        CoreSpacer(height: ThemeConsts.S_PAD),
        HeadlineText1('CHECK YOUR INBOX'),
        BodyText2('...or the spam'),
        CoreSpacer(height: ThemeConsts.L_PAD),
        CoreTextField(
          value: _token,
          hint: 'Past token here',
          onChanged: (String token) => setState(() => _token = token),
          textInputType: TextInputType.visiblePassword,
          textInputAction: TextInputAction.go,
          onSubmitted: (String text) => _onGotToken(context),
        ),
        CoreSpacer(height: ThemeConsts.L_PAD),
        CaptionText(
            'The old posters and signs in the traditional Montserrat neighborhood of Buenos Aires inspired Julieta Ulanovsky to design this typeface and rescue the beauty of urban typography that emerged in the first half of the twentieth century.'),
      ],
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
                    text: 'Sign In',
                    onTap: () => _onGotToken(context),
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
