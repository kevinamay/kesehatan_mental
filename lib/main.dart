import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/login_screen.dart';
import 'screens/health_check_screen.dart';
import 'screens/chat_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyAa28hPtPdgVobL_YIqBoQsn4bQG0evKlg",
      authDomain: "pui1-b3d37.firebaseapp.com",
      databaseURL: "https://pui1-b3d37-default-rtdb.firebaseio.com",
      projectId: "pui1-b3d37",
      storageBucket: "pui1-b3d37.firebasestorage.app",
      messagingSenderId: "969125227852",
      appId: "1:969125227852:web:9853cd81a10691841a73e9",
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(), // Menghubungkan langsung ke LoginScreen sebagai layar awal
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Firebase Auth Demo'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text('Welcome to Flutter Firebase Auth Demo')),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Navigasi ke HealthCheckScreen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HealthCheckScreen()),
              );
            },
            child: Text('Health Check Screen'),
          ),
          ElevatedButton(
            onPressed: () {
              // Navigasi ke ChatScreen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChatScreen()),
              );
            },
            child: Text('Chat Screen'),
          ),
        ],
      ),
    );
  }
}

