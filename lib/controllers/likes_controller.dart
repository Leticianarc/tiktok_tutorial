//import 'package:firebase_storage/firebase_storage.dart';
//import 'package:flutter/material.dart';
//import 'package:get/get.dart';

//class VideoController extends GetxController {
  //final Rx<List<Video>> _videoList = Rx<List<Video>>([]);

  //likeVideo(String id) async {
    //await firestore.collection('videos').doc(id).get();
    //var uid = authController.user.uid;
    //if ((doc.data()! as dynamic)['likes'].contains(uid)) {
     //await firestore.collection('videos').doc(id).update({
        //'likes': FieldValue.arrayRemove([uid]),
      //});
    //} else {
      //await firestore.collection('videos').doc(id).update({
        //'likes': FieldValue.arrayUnion([uid]),
      //});
    //}
  //}
//}

//class Video {}
