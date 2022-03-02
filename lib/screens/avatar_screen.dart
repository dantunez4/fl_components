import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stan Lee'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5.0),
            child: CircleAvatar(
              child: const Text('SL'),
              backgroundColor: Colors.indigo[900],
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 110.0,
          backgroundImage: NetworkImage(
              'https://m.media-amazon.com/images/M/MV5BMjAwNjM3NjY5MF5BMl5BanBnXkFtZTcwMjM4NTYwOQ@@._V1_.jpg'),
        ),
      ),
    );
  }
}
