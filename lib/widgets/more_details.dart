import 'package:flutter/material.dart';

import '../styles/app_styles.dart';

class MoreDetails extends StatefulWidget {
  const MoreDetails({
    super.key,
  });

  @override
  State<MoreDetails> createState() => _MoreDetailsState();
}

class _MoreDetailsState extends State<MoreDetails> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Offstage(
          offstage: !isExpanded,
          child: const Text(
            "La hidratació és essencial per a la recuperació muscular, el bon funcionament de les articulacions i la regulació de la temperatura corporal durant l'exercici. A més, beure prou aigua t'ajudarà a mantenir els teus nivells d'energia i a evitar la fatiga durant les teves sessions d'entrenament. Fes de l'aigua el teu millor aliat per aconseguir els teus objectius de fitness!",
          ),
        ),
        Row(
          children: [
            const Spacer(),
            GestureDetector(
              onTap: () {
                setState(() {
                  isExpanded = !isExpanded;
                });
              },
              child: Text(
                (isExpanded) ? "Amaga detalls" : "Més detalls",
                style: AppStyles.details,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
