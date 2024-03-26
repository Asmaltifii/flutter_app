// ignore_for_file: await_only_futures

import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods {
  Future addElementDetails(
      Map<String, dynamic> elementInfoMap, String id) async {
    return await FirebaseFirestore.instance
        .collection('Elements')
        .doc(id)
        .set(elementInfoMap);
  }

  Future<Stream<QuerySnapshot>> getElementDetails() async {
    return await FirebaseFirestore.instance.collection('Element').snapshots();
    
  }
}
