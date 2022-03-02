import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        const ListTile(
          leading: Icon(
            Icons.photo_album,
            color: Apptheme.primary,
          ),
          title: Text('Soy un título'),
          subtitle: Text(
              'Ad consectetur qui mollit aliqua culpa pariatur eu aute. Commodo ea id culpa et magna commodo. Eu adipisicing sunt officia anim labore laboris enim non irure in sunt deserunt in consectetur.'),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text('Cancelar'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Ok'),
              )
            ],
          ),
        )
      ]),
    );
  }
}
