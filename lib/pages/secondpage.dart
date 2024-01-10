import 'package:flutter/material.dart';
import 'package:lab8_642021143/pages/thirdpage.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final TextEditingController _controller = TextEditingController();
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
            const Text("This is Second Page "),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("กลับไปหน้าที่ 1 "),
            ),
            TextFormField(
              controller: _controller,
              decoration: const InputDecoration(labelText: "ชื่อ-นามสกุล"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ThirdPage(
                              data: _controller.text,
                            )));
              },
              child: const Text("ไปยังหน้าที่ 3 "),
            )
          ],
        ),
      ),
    );
  }
}
