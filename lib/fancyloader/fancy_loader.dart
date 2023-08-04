
import 'package:flutter/material.dart';

import 'fancy_loader_state.dart';

enum AnimationType {
  gradient,
  pulsing,
  rotating,
}

class FancyLoader extends StatefulWidget {
  final AnimationType animationType;
  final double size;
  final Duration duration;

  const FancyLoader({
    Key? key,
    this.animationType = AnimationType.gradient,
    this.size = 40.0,
    this.duration = const Duration(milliseconds: 800),
    required Color startColor,
    required Color endColor,
  }) : super(key: key);

  @override
  FancyLoaderState createState() => FancyLoaderState();
}
