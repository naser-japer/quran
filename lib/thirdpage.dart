import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class Sound extends StatefulWidget {
  const Sound({Key? key});

  @override
  State<Sound> createState() => _SoundState();
}

class _SoundState extends State<Sound> {
  final AudioPlayer audioPlayer = AudioPlayer();

  @override
  void initState() {
    super.initState();
    _initializeAudio();
  }

  Future<void> _initializeAudio() async {
    await audioPlayer.setUrl('https://server8.mp3quran.net/ahmad_huth/001.mp3');
  }

  Future<void> _playAudio() async {
    await audioPlayer.play();
  }

  Future<void> _stopAudio() async {
    await audioPlayer.stop();
  }

  @override
  void dispose() {
    audioPlayer.dispose(); // Dispose of the audio player when done
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        ElevatedButton(
          onPressed: _playAudio,
          child: Text("PLAY"),
        ),
        ElevatedButton(
          onPressed: _stopAudio,
          child: Text("STOP"),
        ),
      ]),
    );
  }
}
