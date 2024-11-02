import 'package:flutter/material.dart';

class SliderItem extends StatefulWidget {
  final String leftLabel;
  final String rightLabel;

  const SliderItem(
      {super.key, required this.leftLabel, required this.rightLabel});

  @override
  State<SliderItem> createState() => _SliderItemState();
}

class _SliderItemState extends State<SliderItem> {
  double _sliderValue = 50;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _generateSliderLabel(widget.leftLabel),
        SizedBox(
          width: 800,
          child: Slider(
            value: _sliderValue,
            max: 100.0,
            min: 0.0,
            onChanged: (double value) {
              setState(() {
                _sliderValue = value;
              });
            },
          ),
        ),
        _generateSliderLabel(widget.rightLabel),
      ],
    );
  }

  Text _generateSliderLabel(String text) => Text(
        text,
        style: Theme.of(context).textTheme.displayMedium!.copyWith(
              color: Theme.of(context).colorScheme.secondary,
            ),
        textAlign: TextAlign.center,
      );
}
