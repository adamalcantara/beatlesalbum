import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
     const MaterialApp(
       home: AlbumPage(),
    ),
  );
}

class AlbumPage extends StatelessWidget {
  const AlbumPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Top App Bar
      appBar: AppBar(
        title: const Text('What Beatles album should I listen to?'),
      ),
      // The body of the app
      body: AlbumChange(),
    );
  }
}


class AlbumChange extends StatefulWidget {

  @override
  State<AlbumChange> createState() => _AlbumChangeState();
}

class _AlbumChangeState extends State<AlbumChange> {

  // variable for the album number
  int albumNumber = 1;

  void changeAlbum() {
    setState(() {
      print('Clicked');
      albumNumber = Random().nextInt(23) + 1;
      print(albumNumber);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: TextButton(
            // On button press, run the function to change the number
            onPressed: () {
              changeAlbum();
            },
            child: Image.asset('images/$albumNumber.jpg'),
        ),
      ),
    );
  }
}
