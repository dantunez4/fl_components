import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Slider & Checks')),
        body: Column(
          children: [
            Slider.adaptive(
                min: 50.0,
                max: 400.0,
                activeColor: Apptheme.primary,
                value: _sliderValue,
                onChanged: _sliderEnabled
                    ? (value) {
                        _sliderValue = value;
                        setState(() {});
                      }
                    : null),
            //Checkbox(
            //    value: _sliderEnabled,
            //    onChanged: (value) {
            //      _sliderEnabled = value ?? true;
            //      setState(() {});
            //    }),
            CheckboxListTile(
                activeColor: Apptheme.primary,
                title: const Text('Habilitar slider'),
                value: _sliderEnabled,
                onChanged: (value) {
                  _sliderEnabled = value ?? true;
                  setState(() {});
                }),
            //itch(
            //  value: _sliderEnabled,
            //  onChanged: (value) {
            //    _sliderEnabled = value;
            //    setState(() {});
            //  }),

            SwitchListTile.adaptive(
                title: const Text('Habilitar slider'),
                value: _sliderEnabled,
                onChanged: (value) {
                  _sliderEnabled = value;
                  setState(() {});
                }),

            const AboutListTile(),
            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image: const NetworkImage(
                      'https://w0.peakpx.com/wallpaper/810/275/HD-wallpaper-dark-magician-girl-yu-gi-oh-yugioh.jpg'),
                  fit: BoxFit.contain,
                  width: _sliderValue,
                ),
              ),
            ),
          ],
        ));
  }
}
