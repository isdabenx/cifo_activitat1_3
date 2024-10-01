import 'package:flutter/material.dart';

import '../styles/app_styles.dart';

class CardDetailed extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  const CardDetailed({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: AppStyles.colorDeepPink,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Icon(icon),
            Text(label),
            Text(
              value,
              style: AppStyles.activityName,
            ),
          ],
        ),
      ),
    );
  }
}
