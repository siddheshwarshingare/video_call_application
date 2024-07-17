import 'dart:math';

import 'package:flutter/material.dart';
import 'package:video_call_application/constant/constant.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

final userId = Random().nextInt(9999);
class CallPage extends StatelessWidget {
  final String callId;
  const CallPage({super.key, required this.callId});

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
        appID: AppInfo.appId,
        appSign: AppInfo.appSign,
        callID: callId,
        userID: userId.toString(),
        userName: 'UserName_$userId',
        config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
       
        );
  }
}
