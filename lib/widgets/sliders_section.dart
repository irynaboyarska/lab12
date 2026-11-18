import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/container_config.dart';
import 'labeled_slider.dart';

class SlidersSection extends StatelessWidget {
  const SlidersSection({super.key});

  @override
  Widget build(BuildContext context) {
    final config = context.watch<ContainerConfig>();

    return Column(
      children: [
        LabeledSlider(
          label: 'Width',
          value: config.width,
          onChanged: context.read<ContainerConfig>().setWidth,
        ),
        LabeledSlider(
          label: 'Height',
          value: config.height,
          onChanged: context.read<ContainerConfig>().setHeight,
        ),
        LabeledSlider(
          label: 'Radius',
          value: config.radius,
          onChanged: context.read<ContainerConfig>().setRadius,
        ),
      ],
    );
  }
}