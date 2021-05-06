import 'package:flutter/material.dart';
import 'package:flutter_text_helpers/flutter_text_helpers.dart';
import 'package:yellow_app/consts/theme.dart';
import 'package:yellow_app/models/user.dart';
import 'package:yellow_app/utils/storage.dart';
import 'package:yellow_app/widgets/core/spacer.dart';

class DashboardHeader extends StatefulWidget {
  @override
  _DashboardHeaderState createState() => _DashboardHeaderState();
}

class _DashboardHeaderState extends State<DashboardHeader> {
  User? _user;

  Future<void> _getUser() async {
    User user = await storageUtil.getUser();
    setState(() => _user = user);
  }

  Widget _userInfo() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          if (_user != null)
            HeadlineText2('${_user!.firstName} ${_user!.lastName}'),
          CoreSpacer(height: ThemeConsts.M_PAD),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: ThemeConsts.CARD_BACKGROUND_COLOR,
                borderRadius: BorderRadius.circular(ThemeConsts.S_RADIUS),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _profileImage() {
    return Container(
      width: ThemeConsts.DHASHBOARD_USER_PROFILE_SIZE,
      height: ThemeConsts.DHASHBOARD_USER_PROFILE_SIZE,
      decoration: BoxDecoration(
        color: Colors.black45,
        borderRadius: BorderRadius.circular(
          ThemeConsts.S_RADIUS,
        ),
      ),
    );
  }

  Widget _background() {
    return Container(
      alignment: Alignment.topCenter,
      width: MediaQuery.of(context).size.width,
      height: ThemeConsts.DHASHBOARD_HEADER_HEIGHT,
      decoration: BoxDecoration(
          color: ThemeConsts.PRIMARY_COLOR,
          borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(ThemeConsts.M_RADIUS))),
    );
  }

  Widget _userCard() {
    return Container(
      alignment: Alignment.topCenter,
      margin: EdgeInsets.only(
        top: ThemeConsts.DHASHBOARD_USER_CARD_SPACEING,
        right: ThemeConsts.M_PAD,
        left: ThemeConsts.M_PAD,
      ),
      height:
          ThemeConsts.DHASHBOARD_USER_PROFILE_SIZE + (ThemeConsts.M_PAD * 2),
      padding: EdgeInsets.all(ThemeConsts.M_PAD),
      decoration: BoxDecoration(
          color: ThemeConsts.BACKGROUND_COLOR,
          boxShadow: ThemeConsts.OUTER_SHADOW,
          borderRadius: BorderRadius.circular(ThemeConsts.M_RADIUS)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _profileImage(),
          CoreSpacer(width: ThemeConsts.M_PAD),
          _userInfo(),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _getUser();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          _background(),
          _userCard(),
        ],
      ),
    );
  }
}
