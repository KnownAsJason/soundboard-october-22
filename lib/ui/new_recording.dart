import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:localstorage/localstorage.dart';
import 'package:record/record.dart';

class NewRecording extends StatefulWidget {
  @override
  _NewRecordingState createState() => _NewRecordingState();
}

class _NewRecordingState extends State<NewRecording> {
  final record = AudioRecorder();
  final LocalStorage storage = LocalStorage('soundboard.json');

  // State variables
  String? audioPath;

  @override
  void initState() {
    super.initState();
    record.hasPermission();
    setupStorage();
  }

  void setupStorage() async {
    var value = storage.getItem('sounds');
    if (value == null) {
      storage.setItem('sounds', []);
    }
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
          ElevatedButton(
              onPressed: () async {
                record.start(const RecordConfig(encoder: AudioEncoder.wav),
                    path: "test.wav");
              },
              child: Text("record")),
          ElevatedButton(
              onPressed: () async {
                audioPath = await record.stop();
              },
              child: Text("Stop")),
          ElevatedButton(
              onPressed: () async {
                final player = AudioPlayer();
                await player.setUrl(audioPath!);
              },
              child: Text("Save")),
          ElevatedButton(
              onPressed: () async {
                final player = AudioPlayer();
                await player.setUrl(audioPath!);
                player.play();
              },
              child: Text("play"))
        ],
      )),
    );
  }
}
