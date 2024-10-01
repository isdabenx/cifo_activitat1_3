import 'package:flutter/material.dart';

import '../helpers/date_formatter.dart';
import '../helpers/number_formatter.dart';
import '../models/activity.dart';
import '../styles/app_styles.dart';

class Activities extends StatelessWidget {
  final List<Activity> activities;
  final int maxActivities;
  const Activities(
      {super.key, required this.activities, required this.maxActivities});

  List<Card> buildActivities() {
    return activities.take(maxActivities).map((activity) {
      return Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const Icon(
                Icons.run_circle_outlined,
                color: AppStyles.colorDeepPink,
                size: 49,
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    activity.name,
                    style: AppStyles.activityName,
                  ),
                  Text(
                    dateTimeFormatter(activity.dateTime),
                    style: AppStyles.dateTime,
                  )
                ],
              ),
              const Spacer(),
              Text(
                "${numberFormatter(activity.km)} km",
                style: AppStyles.distance,
              )
            ],
          ),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Darreres activitats",
          style: AppStyles.headlineMedium,
        ),
        const Divider(),
        ...buildActivities(),
        const SizedBox(height: 32),
      ],
    );
  }
}
