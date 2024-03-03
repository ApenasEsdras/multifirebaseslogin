// ignore_for_file: avoid_print

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

Map<String, FirebaseOptions> firebaseConfigs = {
  'projeto1': const FirebaseOptions(
    apiKey: 'AIzaSyDl9os-q1ZAI8wj6DoalENoXYlRMp8-8cE',
    appId: '1:468318844665:web:6194e0ed3c0fd0b8a65428',
    authDomain: 'teste-27cf0.firebaseapp.com',
    projectId: 'teste-27cf0',
    storageBucket: 'teste-27cf0.appspot.com',
    messagingSenderId: '468318844665',
  ),
  'projeto2': const FirebaseOptions(
    apiKey: 'AIzaSyBgiKYMf9xO8MGKSw-_eQh8oje67lUoP0Y',
    appId: '1:237898851571:web:b1c5938e176e075ffc8386',
    messagingSenderId: '237898851571',
    projectId: 'app-innovaro',
    authDomain: 'app-innovaro.firebaseapp.com',
    storageBucket: 'app-innovaro.appspot.com',
    measurementId: 'G-CE6M6P80CL',
  ),
};
class ProjectSelectionScreen extends StatelessWidget {
  const ProjectSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Project'),
      ),
      body: ListView(
        children: firebaseConfigs.keys.map((projectName) {
          return ListTile(
            title: Text(projectName),
            onTap: () {
              initializeFirebase(projectName);
              Modular.to.navigate('/login');
              print(projectName);
            },
          );
        }).toList(),
      ),
    );
  }

  void initializeFirebase(String projectName) {
    Firebase.initializeApp(
      name: projectName,
      options: firebaseConfigs[projectName]!,
    );
  }
}
