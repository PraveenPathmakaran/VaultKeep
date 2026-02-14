import 'package:flutter/material.dart';

class VaultBackground extends StatelessWidget {
  const VaultBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF101622),
      child: Stack(
        children: [
          Positioned(
            left: -55,
            top: 192,
            child: Container(
              width: 500,
              height: 500,
              decoration: BoxDecoration(
                color: const Color(0x19135BEC),
                borderRadius: BorderRadius.circular(9999),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
