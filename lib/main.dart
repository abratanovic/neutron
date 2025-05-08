import 'package:flutter/material.dart';
import 'package:neutron/ffi_wrapper.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controller,
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                print(add(3, 6));
              },
              child: const Text("Search"),
            ),
          ],
        ),
      ),
    );
  }
}
