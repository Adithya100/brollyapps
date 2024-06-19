import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool colorText = false;
  var textFieldName = TextEditingController();
  var textFieldEmail = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Brolly Student Form"),),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Student Details", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700, color: colorText
            ? Colors.black
            : Colors.blue),
            ),
            TextField(
              controller: textFieldName,
              onChanged: (value) => textFieldName.text,
             ),
            TextField(
              controller: textFieldEmail,
              onChanged: (value) => textFieldEmail.text,
            ),
            ElevatedButton(onPressed: (){
              setState(() {
                colorText =! colorText;
                textFieldName.text = textFieldName.text;
                textFieldEmail.text = textFieldEmail.text;
              });
            }, child: Text("Submit"),),

            Text("Name is : ${textFieldName.text}"),
            Text("Email is : ${textFieldEmail.text}"),
          ],
        ),
      ),
    );
  }
}

