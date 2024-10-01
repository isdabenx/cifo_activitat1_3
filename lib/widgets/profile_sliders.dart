import 'package:flutter/material.dart';

import '../models/profile.dart';
import 'detailed_slider.dart';

class ProfileSliders extends StatelessWidget {
  const ProfileSliders({
    super.key,
    required this.profile,
  });

  final Profile profile;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        DetailedSlider(
          profile: profile,
          title: 'Height',
          sufix: 'cm',
          max: 400,
          getValue: (profile) => profile.height,
          setValue: (profile, double value) => profile.height = value,
        ),
        DetailedSlider(
          profile: profile,
          title: 'Weight',
          sufix: 'kg',
          max: 190,
          getValue: (profile) => profile.weight,
          setValue: (profile, double value) => profile.weight = value,
        ),
      ],
    );
  }
}
