import 'package:flutter/material.dart';

class SehirSecWidget extends StatefulWidget {
  SehirSecWidget({Key? key}) : super(key: key);

  @override
  State<SehirSecWidget> createState() => _SehirSecWidgetState();
}

class _SehirSecWidgetState extends State<SehirSecWidget> {
  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Şehir Seç',
          style: TextStyle(color: Colors.black, fontSize: 40),
        ),
      ),
      body: Form(
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Şehir",
                    labelText: "Şehir Seçin",
                    border: OutlineInputBorder(),
                  ),
                  controller: _textController,
                ),
              ),
            ),
            IconButton(
                icon: const Icon(Icons.search),
                onPressed: () => Navigator.pop(context, _textController.text))
          ],
        ),
      ),
    );
  }
}
