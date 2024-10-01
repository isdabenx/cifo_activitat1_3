import 'package:flutter/material.dart';

import '../models/profile.dart';
import '../styles/app_styles.dart';

class DetailedSlider extends StatefulWidget {
  final Profile profile;
  final String title;
  final String sufix;
  final double max;
  final double Function(Profile) getValue;
  final double Function(Profile, double) setValue;

  const DetailedSlider({
    super.key,
    required this.profile,
    required this.title,
    required this.max,
    required this.getValue,
    required this.setValue,
    required this.sufix,
  });

  @override
  State<DetailedSlider> createState() => _DetailedSliderState();
}

class _DetailedSliderState extends State<DetailedSlider> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Text(widget.title),
          ),
          Expanded(
            flex: 3,
            child: Slider(
              value: widget.getValue(widget.profile),
              max: widget.max,
              divisions: widget.max.toInt(),
              activeColor: AppStyles.colorDeepPink,
              onChanged: (newValue) {
                setState(() {
                  widget.setValue(widget.profile, newValue);
                });
              },
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              "${widget.getValue(widget.profile).toInt()} ${widget.sufix}",
              textAlign: TextAlign.end,
            ),
          ),
        ],
      ),
    );
  }
}
