import 'package:intl/intl.dart';

import '../models/activity.dart';

class Profile {
  String name;
  String surname;
  String urlImage;
  DateTime createdAt;
  List<Activity> activities;
  double height;
  double weight;
  double goal;

  Profile({
    required this.name,
    required this.surname,
    required this.createdAt,
    required this.urlImage,
    required this.activities,
    required this.height,
    required this.weight,
    required this.goal,
  });

  double getTotalDistance() =>
      activities.fold(0, (totalKm, activity) => totalKm + activity.km);

  String getStringTotalDistance() {
    double totalTime = getTotalDistance();
    NumberFormat numberFormat = NumberFormat('#.#', 'ca_ES');
    return numberFormat.format(totalTime);
  }

  Duration getTotalDuration() => activities.fold(Duration.zero,
      (totalDuration, activity) => totalDuration + activity.duration);

  String getStringTotalDuration() {
    Duration duration = getTotalDuration();
    return "${duration.inHours}h ${duration.inMinutes % 60}'";
  }
}
