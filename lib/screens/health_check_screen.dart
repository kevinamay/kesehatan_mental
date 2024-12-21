import 'package:flutter/material.dart';
import 'chat_screen.dart';

class HealthCheckScreen extends StatelessWidget {
  final TextEditingController _answerController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tes Kesehatan Awal')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Apakah Anda merasa demam atau kelelahan belakangan ini?'),
            TextField(
              controller: _answerController,
              decoration: InputDecoration(hintText: 'Jawaban Anda'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => ChatScreen()),
                );
              },
              child: Text('Lanjut ke Konsultasi'),
            ),
          ],
        ),
      ),
    );
  }
}
