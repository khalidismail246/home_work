import 'package:app/widgets/transfer/transfer_button.dart';
import 'package:flutter/material.dart';

class TransferButtonView extends StatelessWidget {
  const TransferButtonView({
    super.key,
    required this.ontapNext,
    required this.ontapBack,
  });
  final VoidCallback ontapNext;
  final VoidCallback ontapBack;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TransferButton(
          color: Colors.transparent,
          content: [
            Icon(Icons.arrow_back_ios_new, color: Colors.white, size: 16),
            Text("Back", style: TextStyle(color: Colors.white, fontSize: 20)),
          ],
          onchange: ontapBack,
        ),
        Expanded(child: SizedBox()),
        TransferButton(
          color: Color(0xff9088DF),
          content: [
            Text("Next", style: TextStyle(color: Colors.white, fontSize: 20)),
            Icon(Icons.arrow_forward_ios, color: Colors.white, size: 16),
          ],
          onchange: ontapNext,
        ),
      ],
    );
  }
}
