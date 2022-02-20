
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:firebase_core/firebase_core.dart';

// ///Retreive dynamic link firebase.
// void initDynamicLinks() async {
//   final PendingDynamicLinkData? data =
//       await FirebaseDynamicLinks.instance.getInitialLink();
//   final Uri? deepLink = data?.link;

//   if (deepLink != null) {
//     handleDynamicLink(deepLink);
//   }
//   FirebaseDynamicLinks.instance.onLink(
//       onSuccess: (PendingDynamicLinkData? dynamicLink) async {
//     final Uri? deepLink = dynamicLink?.link;

//     if (deepLink != null) {
//       handleDynamicLink(deepLink);
//     }
//   }, onError: (OnLinkErrorException e) async {
//     print(e.message);
//   });
// }

// handleDynamicLink(Uri url) {
//   List<String> separatedString = [];
//   separatedString.addAll(url.path.split('/'));
//   if (separatedString[1] == "post") {
//     Navigator.push(
//         context,
//         MaterialPageRoute(
//             builder: (context) => PostScreen(separatedString[2])));
//   }
// }
