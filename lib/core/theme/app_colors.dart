import 'package:flutter/material.dart';

abstract class AppColors {
  static const scaffoldBackground = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF1a1a2e), Color(0xFF16213e), Color(0xFF0f4c75)],
  );

  static const cardGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF2a2a4e), Color(0xFF26314e), Color(0xFF1f5c8a)],
  );

  static const cardBackground = Color(0xFF242449);
  static const cardBackgroundSecondary = Color(0xFF1f2847);

  static const primaryAccent = Color(0xFF00d2ff);

  static const homeWinButton = LinearGradient(
    colors: [Color(0xFF4caf50), Color(0xFF388e3c)],
  );

  static const drawButton = LinearGradient(
    colors: [Color(0xFFff9800), Color(0xFFf57c00)],
  );

  static const awayWinButton = LinearGradient(
    colors: [Color(0xFFf44336), Color(0xFFd32f2f)],
  );

  static const primaryText = Color(0xFFffffff);
  static const secondaryText = Color(0xFFb3b3cc);
  static const mutedText = Color(0xFF8a8aa3);
  static const accentText = Color(0xFF00d2ff);

  static const liveScoreText = Color(0xFF00ff88);
  static const finalScoreText = Color(0xFFffffff);
  static const pendingScoreText = Color(0xFFb3b3cc);

  static const liveIndicator = Color(0xFFff4444);
  static const upcomingIndicator = Color(0xFFffaa00);
  static const finishedIndicator = Color(0xFF666699);

  static const cardBorder = Color(0xFF3a3a5e);
  static const selectedBorder = Color(0xFF00d2ff);

  static final cardShadow = const Color(0xFF000000).withOpacity(0.3);
  static final glowShadow = const Color(0xFF00d2ff).withOpacity(0.8);
}

class AppButtonStyles {
  static BoxDecoration oddButton({
    required Gradient gradient,
    bool isSelected = false,
    bool hasGlow = false,
  }) {
    return BoxDecoration(
      gradient: gradient,
      borderRadius: BorderRadius.circular(8),
      border: isSelected
          ? Border.all(color: AppColors.selectedBorder, width: 2)
          : Border.all(color: AppColors.cardBorder.withOpacity(0.3)),
      boxShadow: hasGlow
          ? [
              BoxShadow(
                color: AppColors.glowShadow,
                blurRadius: 2,
                spreadRadius: 1,
              ),
            ]
          : [
              BoxShadow(
                color: AppColors.cardShadow,
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
    );
  }

  static BoxDecoration matchCard({bool isLive = false}) {
    return BoxDecoration(
      gradient: AppColors.cardGradient,
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: AppColors.cardBorder, width: 1),

      boxShadow: [
        BoxShadow(
          color: AppColors.cardShadow,
          blurRadius: 8,
          offset: const Offset(0, 4),
        ),
      ],
    );
  }
}
