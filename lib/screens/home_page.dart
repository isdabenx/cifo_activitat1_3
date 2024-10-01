import 'package:flutter/material.dart';

import '../data/profile_antonia.dart';
import '../models/profile.dart';
import '../widgets/activities.dart';
import '../widgets/custom_bottom_navigation_bar.dart';
import '../widgets/header.dart';
import '../widgets/month_objective.dart';
import 'detailed_profile.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Profile antonia = profileAntonia;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fitness Time"),
        centerTitle: true,
        leading: const Icon(Icons.menu),
        actions: [
          IconButton(
            icon: Hero(
              tag: antonia.urlImage,
              child: CircleAvatar(
                backgroundImage: NetworkImage(antonia.urlImage),
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailedProfile(profile: antonia),
                ),
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(name: antonia.name),
              Activities(
                activities: antonia.activities,
                maxActivities: 3,
              ),
              MonthObjective(profile: antonia),
            ],
          ),
        ),
      ),
    );
  }
}
