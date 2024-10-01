import 'package:flutter/material.dart';

import '../styles/app_styles.dart';
import 'more_details.dart';

class Header extends StatelessWidget {
  final String name;
  const Header({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Hola $name,",
          style: AppStyles.headlineLarge,
        ),
        const SizedBox(height: 8),
        const Text(
            "Recorda beure aigua regularment al llarg del dia per mantenir el teu cos hidratat i millorar el teu rendiment físic i mental."),
        const SizedBox(height: 10),
        const MoreDetails(),
        const SizedBox(height: 32),
      ],
    );
  }
}
