import 'package:flutter/material.dart';

import '../models/profile.dart';
import 'card_detailed.dart';

class ProfileCards extends StatelessWidget {
  const ProfileCards({
    super.key,
    required this.profile,
  });

  final Profile profile;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CardDetailed(
              icon: Icons.alarm,
              label: "Time",
              value: profile.getStringTotalDuration(),
            ),
            CardDetailed(
              icon: Icons.location_on,
              label: "km",
              value: profile.getStringTotalDistance(),
            ),
            CardDetailed(
              icon: Icons.home,
              label: "Activities",
              value: profile.activities.length.toString(),
            ),
          ],
        ),
      ],
    );
  }
}
