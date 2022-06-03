import 'package:flutter/material.dart';
import 'package:videocallv1/Models/call.dart';
import 'package:videocallv1/Resources/call_mathods.dart';

class CallScreen extends StatefulWidget {
  final Call call;

  const CallScreen({Key? key, required this.call}) : super(key: key);

  @override
  State<CallScreen> createState() => _CallScreenState();
}

final CallMethods callMethods = CallMethods();

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("Call has been made"),
            MaterialButton(
              color: Colors.red,
              child: const Icon(
                Icons.call_end,
                color: Colors.white,
              ),
              onPressed: () async {
                await callMethods.endCall(call: widget.call);
                if (mounted) {
                  Navigator.pop(context);
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
