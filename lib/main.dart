
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:multifirebaseslogin/firebase_serve.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MaterialApp(
    title: 'Firebase Configuration Example',
    home: ProjectSelectionScreen(),
  ));
}

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
              Navigator.pop(context);
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
