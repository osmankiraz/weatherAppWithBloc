import 'package:flutter/material.dart';

class SehirSecWidget extends StatefulWidget {
  const SehirSecWidget({Key? key}) : super(key: key);

  @override
  _SehirSecWidgetState createState() => _SehirSecWidgetState();
}

class _SehirSecWidgetState extends State<SehirSecWidget> {
  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Şehir Seç"),
      ),
      body: Form(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _textController,
                  decoration:
                      InputDecoration(labelText: "Sehir", hintText: "Şehir Seçin", border: OutlineInputBorder()),
                ),
              ),
            ),
            IconButton(
                onPressed: () {
                  Navigator.pop(context, _textController.text);
                },
                icon: Icon(Icons.search))
          ],
        ),
      ),
    );
  }
}
