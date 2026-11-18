import 'package:flutter/material.dart';

class LabeledSlider extends StatelessWidget {
  final String label;
  final double value;
  final ValueChanged<double> onChanged;

  const LabeledSlider({
    super.key,
    required this.label,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 14, top: 4),
          child: Text.rich(
            TextSpan(
              text: '$label: ',
              children: [
                TextSpan(
                  text: value.toStringAsFixed(2),
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        Slider(
          value: value,
          min: 0,
          max: 100,
          onChanged: onChanged,
        ),
      ],
    );
  }
}