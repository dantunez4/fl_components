import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({Key? key, required this.imageUrl, this.name})
      : super(key: key);

  final String imageUrl;
  final String? name;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 30.0,
      shadowColor: Apptheme.primary.withOpacity(0.5),
      child: Column(children: [
        FadeInImage(
          placeholder: const AssetImage('assets/jar-loading.gif'),
          image: NetworkImage(
            imageUrl,
          ),
          width: double.infinity,
          height: 230.0,
          fit: BoxFit.cover,
          fadeInDuration: const Duration(milliseconds: 300),
        ),
        if (name != null)
          Container(
              padding:
                  const EdgeInsets.only(right: 20.0, top: 10.0, bottom: 10.0),
              alignment: AlignmentDirectional.centerEnd,
              child: Text(name!)),
      ]),
    );
  }
}
