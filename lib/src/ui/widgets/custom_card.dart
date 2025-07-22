import 'package:deep_river_soft/core/theme/app_colors.dart';
import 'package:deep_river_soft/src/data/models/match_model.dart';
import 'package:flutter/material.dart';
import 'odd_button.dart';

class CustomCard extends StatefulWidget {
  final MatchModel match;
  final String? selectedBet;
  final void Function(String betType, double odds)? onBetSelected;

  const CustomCard({
    super.key,
    required this.match,
    this.selectedBet,
    this.onBetSelected,
  });

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard>
    with SingleTickerProviderStateMixin {
  late final AnimationController _pulseController;
  late final Animation<double> _pulseAnimation;

  @override
  void initState() {
    super.initState();
    _pulseController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _pulseAnimation = Tween<double>(begin: 1.0, end: 1.05).animate(
      CurvedAnimation(parent: _pulseController, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _pulseController.dispose();
    super.dispose();
  }

  bool get _isLive => DateTime.now().isAfter(widget.match.startTime);
  bool get _isUpcoming => DateTime.now().isBefore(widget.match.startTime);

  String get _timeDisplay {
    if (_isLive) return 'LIVE';
    final diff = widget.match.startTime.difference(DateTime.now());
    if (diff.inDays > 0) return '${diff.inDays}d';
    if (diff.inHours > 0) return '${diff.inHours}h';
    return '${diff.inMinutes}m';
  }

  Color get _statusColor {
    if (_isLive) return AppColors.liveIndicator;
    if (_isUpcoming) return AppColors.upcomingIndicator;
    return AppColors.finishedIndicator;
  }

  Color get _scoreColor {
    if (_isLive) return AppColors.liveScoreText;
    if (_isUpcoming) return AppColors.pendingScoreText;
    return AppColors.finalScoreText;
  }

  void _selectBet(String betType, double odds) {
    _pulseController.forward().then((_) => _pulseController.reverse());
    if (widget.onBetSelected != null) widget.onBetSelected!(betType, odds);
  }

  @override
  Widget build(BuildContext context) {
    final odds = widget.match.odds;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: AppButtonStyles.matchCard(isLive: _isLive),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      widget.match.sport.type.emoji,
                      style: const TextStyle(fontSize: 16),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      widget.match.sport.type.key,
                      style: const TextStyle(
                        color: AppColors.secondaryText,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: _statusColor.withOpacity(0.2),
                    border: Border.all(color: _statusColor),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    _timeDisplay,
                    style: TextStyle(
                      color: _statusColor,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),

            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    widget.match.homeTeam,

                    style: const TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.cardBackgroundSecondary,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: AppColors.cardBorder.withOpacity(0.3),
                    ),
                  ),
                  child: Text(
                    _isUpcoming ? 'vs' : widget.match.scoreDisplay,
                    style: TextStyle(
                      color: _scoreColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    widget.match.awayTeam,
                    textAlign: TextAlign.end,
                    style: const TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),

            Row(
              children: [
                OddButton(
                  label: 'home',
                  betType: '1',
                  odds: odds['home'] ?? 1.0,
                  selected: widget.selectedBet == '1',
                  pulseAnimation: _pulseAnimation,
                  gradient: AppColors.homeWinButton,
                  onTap: () => _selectBet('1', odds['home'] ?? 1.0),
                ),
                OddButton(
                  label: 'X',
                  betType: 'X',
                  odds: odds['X'] ?? 1.0,
                  selected: widget.selectedBet == 'X',
                  pulseAnimation: _pulseAnimation,
                  gradient: AppColors.drawButton,
                  onTap: () => _selectBet('X', odds['X'] ?? 1.0),
                ),
                OddButton(
                  label: 'away',
                  betType: '2',
                  odds: odds['away'] ?? 1.0,
                  selected: widget.selectedBet == '2',
                  pulseAnimation: _pulseAnimation,
                  gradient: AppColors.awayWinButton,
                  onTap: () => _selectBet('2', odds['away'] ?? 1.0),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
