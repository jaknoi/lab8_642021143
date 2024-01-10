import 'package:flutter/material.dart';
import 'package:lab8_642021143/pages/secondpage.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key, required this.data});

  final String data;
  @override
  State<ThirdPage> createState() => _tThirdPageState();
}

class _tThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('lab8_143'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("This is third Page "),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                MaterialPageRoute(builder: (context) => SecondPage());
              },
              child: const Text("กลับไปหน้าที่ 2 "),
            ),
            Text(widget.data)
          ],
        ),
      ),
    );
  }
}
