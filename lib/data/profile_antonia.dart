import '../models/activity.dart';
import '../models/profile.dart';

final DateTime yesterday = DateTime.now().subtract(const Duration(days: 1));

final List<Activity> activities = [
  Activity(
    name: "Running",
    dateTime: DateTime(yesterday.year, yesterday.month, yesterday.day, 18, 20),
    km: 7.300,
    duration: const Duration(minutes: 33),
  ),
  Activity(
    name: "Running",
    dateTime: DateTime(2024, 9, 15, 21, 45),
    km: 6.550,
    duration: const Duration(minutes: 23),
  ),
  Activity(
    name: "Running",
    dateTime: DateTime(2024, 9, 10, 21, 33),
    km: 7.100,
    duration: const Duration(minutes: 23),
  ),
  Activity(
    name: "Fake",
    dateTime: DateTime(2024, 9, 10, 21, 33),
    km: 191.5,
    duration: const Duration(hours: 1, minutes: 26),
  ),
  ...fakeActivities(38)
];

final Profile profileAntonia = Profile(
  name: "Antònia",
  surname: "Font",
  createdAt: DateTime(2022, 4, 20, 0, 0),
  urlImage: "https://randomuser.me/api/portraits/women/44.jpg",
  activities: activities,
  height: 150,
  weight: 55,
  goal: 326.77,
);

List<Activity> fakeActivities(int quantity) {
  return List.generate(
    quantity,
    (int index) => Activity(
      name: "Fake $index",
      dateTime: yesterday,
      km: 0,
      duration: Duration.zero,
    ),
  );
}
