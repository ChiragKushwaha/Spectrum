import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:spectrum/pages/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firestore.instance.settings(timestampsInSnapshotsEnabled: true).then(
      (_) {
//    print("Timestamps enabled in snapshots\n");
  }, onError: (err) {
//    print("Error enabling timestamps in snapshots\n");
  });
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spectrum',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        accentColor: Colors.black87,
      ),
      home: Home(),
    );
  }
}
