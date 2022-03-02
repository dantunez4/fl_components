import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Card Widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          children: const [
            CustomCardType1(),
            SizedBox(height: 10.0),
            CustomCardType2(
              name: 'Un hermoso paisaje',
              imageUrl:
                  'https://www.creativefabrica.com/wp-content/uploads/2021/06/12/mountain-landscape-illustration-design-b-Graphics-13326021-1.jpg',
            ),
            SizedBox(height: 10.0),
            CustomCardType2(
              imageUrl:
                  'https://cdn.pixabay.com/photo/2019/12/11/21/18/landscape-4689328_960_720.jpg',
            ),
            SizedBox(height: 10.0),
            CustomCardType2(
              imageUrl:
                  'https://img.freepik.com/vector-gratis/escena-naturaleza-rio-colinas-bosque-montana-ilustracion-estilo-dibujos-animados-planos-paisaje_1150-37326.jpg?size=626&ext=jpg&ga=GA1.2.1581026096.1641772800',
            ),
            SizedBox(height: 10.0),
          ],
        ));
  }
}
