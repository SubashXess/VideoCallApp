import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:videocallv1/Models/call.dart';
import 'package:videocallv1/constants/strings.dart';

class CallMethods {
  final CollectionReference callCollection =
      FirebaseFirestore.instance.collection(CALL_COLLECTION);

  Future<bool> makeCall({Call? call}) async {
    try {
      call!.hasDialled = true;
      Map<String, dynamic> hasDialledMap = call.toMap(call);
      call.hasDialled = false;
      Map<String, dynamic> hasNotDialledMap = call.toMap(call);

      await callCollection.doc(call.callerId).set(hasDialledMap);
      await callCollection.doc(call.receiverId).set(hasNotDialledMap);
      return true;
    } catch (e) {
      // ignore: avoid_print
      print(e);
      return false;
    }
  }

  Future<bool> endCall({Call? call}) async {
    try {
      await callCollection.doc(call!.callerId).delete();
      await callCollection.doc(call.receiverId).delete();
      return true;
    } catch (e) {
      // ignore: avoid_print
      print(e);
      return false;
    }
  }
}
