import 'package:flutter/material.dart';

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
      appBar: AppBar(
        title: const Text('What Beatles album should I listen to?'),
      ),
      body: AlbumChange(),
    );
  }
}


class AlbumChange extends StatefulWidget {

  @override
  State<AlbumChange> createState() => _AlbumChangeState();
}

class _AlbumChangeState extends State<AlbumChange> {

  int albumNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: TextButton(
            onPressed: () {
              print('Clicked');
            },
            child: Image.asset('images/$albumNumber.jpg'),
        ),
      ),
    );
  }
}
