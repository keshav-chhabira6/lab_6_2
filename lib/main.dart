import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Profile Card"),
        ),
        body: const Center(
          child: ProfileCard(),
        ),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      elevation: 5.0,
      margin: const EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Avatar
            CircleAvatar(
              radius: 50.0,
              backgroundImage: NetworkImage(
                  'https://via.placeholder.com/150'), // Replace with an actual image URL or asset
            ),
            const SizedBox(height: 16.0),

            // Name
            const Text(
              "keshav kumar",
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),

            // Bio
            const Text(
              "Flutter developer, tech enthusiast, and coffee lover. 🚀☕",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 16.0),

            // Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Follow Button
                ElevatedButton.icon(
                  onPressed: () {
                    // Add action for Follow button
                  },
                  icon: const Icon(Icons.person_add),
                  label: const Text("Follow"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                ),

                // Message Button
                OutlinedButton.icon(
                  onPressed: () {
                    // Add action for Message button
                  },
                  icon: const Icon(Icons.message),
                  label: const Text("Message"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
