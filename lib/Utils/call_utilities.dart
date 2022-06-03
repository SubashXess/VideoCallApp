import 'dart:math';

import 'package:flutter/material.dart';
import 'package:videocallv1/Models/call.dart';
import 'package:videocallv1/Resources/call_mathods.dart';
import 'package:videocallv1/Screens/Call_Screen/call_screen.dart';

class CallUtils {
  static final CallMethods callMethods = CallMethods();

  // static dial({User from, User to, context}) async {
  //   Call call = Call(
  //     callerId: from.uid,
  //     callerName: from.name,
  //     callerPic: from.profilePhoto,
  //     receiverId: to.uid,
  //     receiverName: to.name,
  //     receiverPic: to.profilePhoto,
  //     channelId: Random().nextInt(1000).toString(),
  //   );

  //   bool callMade = await callMethods.makeCall(call: call);
  //   call.hasDialled = true;

  //   if (callMade) {
  //     Navigator.push(context,
  //         MaterialPageRoute(builder: (context) => CallScreen(call: call)));
  //   }
  // }
}
