import 'package:application/widgets/gender/item_Gender.dart';
import 'package:flutter/material.dart';

class GenderSection extends StatelessWidget {
  const GenderSection({
    super.key,
    required this.selectedGender,
    required this.onGenderChanged,
  });

  final String? selectedGender;
  final ValueChanged<String> onGenderChanged;

  final Color constColor = const Color(0xff17172F);
  final Color defColor = const Color(0xff090B24);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () => onGenderChanged("Male"),
            child: itemGender(
              color: selectedGender == "Male" ? defColor : constColor,
              title: "Male",
              icon: Icons.male,
            ),
          ),
        ),
        const SizedBox(width: 24),
        Expanded(
          child: GestureDetector(
            onTap: () => onGenderChanged("Female"),
            child: itemGender(
              color: selectedGender == "Female" ? defColor : constColor,
              title: "Female",
              icon: Icons.female,
            ),
          ),
        ),
      ],
    );
  }
}
