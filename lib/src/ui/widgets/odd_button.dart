import 'package:flutter/material.dart';
import 'package:deep_river_soft/core/theme/app_colors.dart';

class OddButton extends StatelessWidget {
  final String label;
  final String betType;
  final double odds;
  final bool selected;
  final Gradient gradient;
  final Animation<double> pulseAnimation;
  final VoidCallback onTap;

  const OddButton({
    super.key,
    required this.label,
    required this.betType,
    required this.odds,
    required this.selected,
    required this.gradient,
    required this.pulseAnimation,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: AnimatedBuilder(
          animation: pulseAnimation,
          builder: (context, child) {
            return Transform.scale(
              scale: selected ? pulseAnimation.value : 1.0,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 4),
                decoration: AppButtonStyles.oddButton(
                  gradient: selected ? AppColors.scaffoldBackground : gradient,
                  isSelected: selected,
                  hasGlow: selected,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      label,
                      style: const TextStyle(
                        color: AppColors.primaryText,
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      odds.toStringAsFixed(2),
                      style: const TextStyle(
                        color: AppColors.primaryText,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
