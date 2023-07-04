import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class MusicWidget extends StatelessWidget {
  const MusicWidget({super.key});

// to play music in buttons
  void playMusic(int musicNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('music-$musicNumber.mp3'));
  }

  //to use buttons
  Expanded myButtons(int musicNumber, Color buttonColor, String buttonName) {
    return Expanded(
      // use Expanded to take all size of screen
      child: Padding(
        padding: const EdgeInsets.only(bottom:0.7),
        child: TextButton(
          style: TextButton.styleFrom(backgroundColor: Colors.white),
          onPressed: () {
            playMusic(musicNumber);
          },
          child: Padding(
            padding: const EdgeInsets.only(left:15.0),
            child: Row(
              children: [
                Icon(
                  Icons.music_note,
                  color: buttonColor,
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Text(
                  buttonName,
                  style: TextStyle(
                    color: buttonColor,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple[300],
        appBar: AppBar(
          title: const Text('Naghamat'),
          backgroundColor: Colors.purple,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //  SongNumber , ButtonColor , ButtonName
            myButtons(0, Colors.black, "Tik Tok"),
            myButtons(1, Colors.red, "Samsung Galaxy"),
            myButtons(2, Colors.green, "Samsung Note"),
            myButtons(3, Colors.orange, "Nokia"),
            myButtons(4, Colors.blue, "Iphone 11"),
            myButtons(5, Colors.purple, "WhatsApp"),
            myButtons(6, Colors.pink, "Samsung Galary"),
            myButtons(7, const Color.fromARGB(255, 154, 140, 10), "Iphone 6"),
          ],
        ),
      ),
    );
  }
}
