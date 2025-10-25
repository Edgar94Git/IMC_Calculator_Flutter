import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_colors.dart';
import 'package:imc_calculator/core/text_styles.dart';

class HeightSelector extends StatefulWidget {
  const HeightSelector({super.key});

  @override
  State<HeightSelector> createState() => _HeightSelectorState();
}

class _HeightSelectorState extends State<HeightSelector> {
  int height = 164; //Altura inicial
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.backgroundComponent,
          borderRadius: BorderRadius.circular(16)
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text("Altura", style: TextStyles.bodyText),
            ),
            Text("$height cm", style: TextStyles.bold38BodyText),
            Slider(value: height.toDouble(), onChanged: (newHeight) {
              setState(() {
                height = newHeight.toInt();
              });
            },
            min: 120,
            max: 220,
            divisions: 100,
            activeColor: AppColors.primary)
          ],
        ),
      ),
    );
  }
}