import 'package:flutter/material.dart';

import '../helpers/date_formatter.dart';
import '../models/profile.dart';
import '../styles/app_styles.dart';
import '../widgets/custom_bottom_navigation_bar.dart';
import '../widgets/profile_cards.dart';
import '../widgets/profile_sliders.dart';

class DetailedProfile extends StatelessWidget {
  final Profile profile;
  const DetailedProfile({super.key, required this.profile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perfil"),
        centerTitle: true,
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 14),
            Hero(
              tag: profile.urlImage,
              child: CircleAvatar(
                backgroundImage: NetworkImage(profile.urlImage),
                radius: 100,
              ),
            ),
            const SizedBox(height: 18),
            Text(
              "${profile.name} ${profile.surname}",
              style: AppStyles.headlineLarge,
            ),
            Text(
              "des del ${dateFormater(profile.createdAt)}",
              style: AppStyles.headlineSmall,
            ),
            ProfileCards(profile: profile),
            ProfileSliders(profile: profile)
          ],
        ),
      ),
    );
  }
}
