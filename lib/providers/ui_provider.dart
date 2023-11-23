

  import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final mobileBreakPoint = Provider<double>((ref) => 500.0);
final tabletBreakPoint = Provider<double>((ref) => 850.0);


final screenWidthProvider = StateProvider<double>((ref) => 0);
final screenHeightProvider = StateProvider<double>((ref) => 0);

final gapProvider = Provider<double>((ref) => 8.0);
final radiusProvider = Provider<double>((ref) => 10.0);
final statCard1ColorProvider = Provider<Color>((ref) => const Color.fromARGB(255, 164, 13, 61));
final statCard2ColorProvider = Provider<Color>((ref) => const Color(0xFF99F443));
final statCard3ColorProvider = Provider<Color>((ref) => const Color.fromARGB(255, 29, 155, 86));
final darkTextColorProvider = Provider<Color>((ref) => const Color(0xFF757070));
final brightTextColorProvider = Provider<Color>((ref) => const Color(0xFFc6c6c6));
final paddingProvider = Provider<double>((ref) => 16.0);
