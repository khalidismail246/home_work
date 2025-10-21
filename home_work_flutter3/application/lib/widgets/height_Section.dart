import 'package:flutter/material.dart';

class HeightSection extends StatelessWidget {
  const HeightSection({
    super.key,
    required this.height,
    required this.onHeightChanged,
  });

  final double height;
  final ValueChanged<double> onHeightChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xff17172F),
      ),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              "HEIGHT",
              style: TextStyle(
                color: Colors.grey.withValues(alpha: 1),
                fontSize: 16,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "${height.toInt()}",
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 50,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Text(
                    "cm",
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                ),
              ],
            ),
            SliderTheme(
              data: SliderThemeData(
                activeTrackColor: Colors.white,
                inactiveTrackColor: Colors.grey.withValues(alpha: 1),
                trackHeight: 1,
                padding: const EdgeInsets.symmetric(horizontal: 35),
                thumbColor: const Color(0xffED0D54),
                thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 15),
              ),
              child: Slider(
                value: height,
                min: 100.0,
                max: 250.0,
                onChanged: onHeightChanged,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
