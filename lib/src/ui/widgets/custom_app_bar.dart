import 'package:deep_river_soft/core/theme/app_colors.dart';
import 'package:deep_river_soft/src/bloc/match_bloc.dart';
import 'package:deep_river_soft/src/data/models/sport_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      backgroundColor: Colors.transparent,
      flexibleSpace: Container(
        decoration: const BoxDecoration(gradient: AppColors.scaffoldBackground),
      ),
      title: const Text(
        'DeepRiver Soft Betting',
        style: TextStyle(
          color: AppColors.primaryText,
          fontSize: 22,
          fontWeight: FontWeight.bold,
          letterSpacing: 0.5,
        ),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: BlocBuilder<MatchBloc, MatchState>(
          builder: (context, state) {
            final selectedFilter = state.selectedFilter;

            return Container(
              height: 60,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    AppColors.cardBackground.withOpacity(0.3),
                  ],
                ),
              ),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: SportType.values.length,
                itemBuilder: (context, index) {
                  final sport = SportType.values[index];
                  final isSelected = selectedFilter == sport;

                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 6,
                      vertical: 4,
                    ),
                    child: FilterChip(
                      showCheckmark: false,
                      selected: isSelected,
                      avatar: Text(sport.emoji),
                      label: FittedBox(
                        child: Text(
                          sport.displayName,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: isSelected
                                ? FontWeight.w600
                                : FontWeight.w400,
                            color: isSelected
                                ? AppColors.primaryText
                                : AppColors.secondaryText,
                          ),
                        ),
                      ),
                      backgroundColor: AppColors.cardBackground.withOpacity(
                        isSelected ? 1 : 0.3,
                      ),
                      selectedColor: AppColors.cardBackground,
                      side: BorderSide(
                        color: isSelected
                            ? AppColors.primaryAccent
                            : AppColors.cardBorder.withOpacity(0.3),
                        width: isSelected ? 1.5 : 1,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      onSelected: (_) {
                        context.read<MatchBloc>().add(
                          FilterChanged(newFilter: sport),
                        );
                      },
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 60);
}
