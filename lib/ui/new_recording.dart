import 'package:flutter/material.dart';

class NewRecording extends StatefulWidget {
  @override
  _NewRecordingState createState() => _NewRecordingState();
}

class _NewRecordingState extends State<NewRecording> {
  @override
  void initState() {
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Recording'),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(),
            ElevatedButton(onPressed: () {}, child: Text("record")),
            ElevatedButton(onPressed: () {}, child: Text("Stop")),
            ElevatedButton(onPressed: () {}, child: Text("Save")),
            ElevatedButton(onPressed: () {}, child: Text("play"))
          ],
        )
      ),
    );
  }
}
