import 'package:flutter/material.dart';
import 'package:videocallv1/Models/call.dart';
import 'package:videocallv1/Resources/call_mathods.dart';
import 'package:videocallv1/Screens/Call_Screen/call_screen.dart';

class PickupScreen extends StatelessWidget {
  final Call call;
  final CallMethods callMethods = CallMethods();
  PickupScreen({Key? key, required this.call}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 100.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Incoming...",
              style: TextStyle(fontSize: 30.0),
            ),
            const SizedBox(height: 50.0),
            Image.network(
              "${call.callerId}",
              height: 150.0,
              width: 150.0,
            ),
            const SizedBox(height: 15.0),
            Text(
              "${call.callerName}",
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20.0,
              ),
            ),
            const SizedBox(height: 75.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () async {
                    await callMethods.endCall(call: call);
                  },
                  icon: const Icon(Icons.call_end),
                  color: Colors.redAccent,
                ),
                const SizedBox(width: 25.0),
                IconButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CallScreen(call: call))),
                  icon: const Icon(Icons.call),
                  color: Colors.green,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
