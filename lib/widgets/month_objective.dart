import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../models/profile.dart';
import '../styles/app_styles.dart';

class MonthObjective extends StatelessWidget {
  final Profile profile;

  const MonthObjective({
    super.key,
    required this.profile,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularPercentIndicator(
        radius: 50,
        center: Text(
          "${((profile.getTotalDistance() / profile.goal) * 100).toInt()}%",
          style: AppStyles.headlineMedium,
        ),
        progressColor: const Color(0xFF3407DA),
        lineWidth: 10,
        percent: profile.getTotalDistance() / profile.goal,
        footer: const Text("Objectiu mensual"),
        circularStrokeCap: CircularStrokeCap.round,
        animation: true,
      ),
    );
  }
}
