import 'package:flutter/material.dart';

class Shuffle extends StatefulWidget {
  const Shuffle({Key? key}) : super(key: key);
  @override
  State<Shuffle> createState() => _ShuffleState();
}

class _ShuffleState extends State<Shuffle> {
  List<String> songs = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            songs.shuffle();
          });
        },
        tooltip: 'Shuffle',
        child: const Icon(Icons.shuffle),
      ),
      backgroundColor: const Color(0xfff5efe3),
      body: SafeArea(
        child: ListView.builder(
          itemCount: songs.length,
          itemBuilder: (context, index){
            return Container(
              decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide()
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(
                    songs[index],
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
