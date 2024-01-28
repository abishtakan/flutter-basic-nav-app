import 'package:flutter/material.dart';
import 'package:flutter_navigation_app/third_page.dart';

class SecondPage extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _controller,
              decoration: InputDecoration(labelText: 'Enter a message'),
            ),
            ElevatedButton(
              child: Text('Go to Third Page'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ThirdPage(message: _controller.text),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
