import 'package:deep_river_soft/core/models/sport_model.dart';
import 'package:deep_river_soft/core/util/extensions.dart';
import 'package:flutter/material.dart';

class FilterSection extends StatelessWidget implements PreferredSizeWidget {
  const FilterSection({super.key});
  @override
  Size get preferredSize => const Size.fromHeight(60.0);

  IconData getIcon(SportType type) {
    return switch (type) {
      SportType.football => Icons.sports_soccer,
      SportType.basketball => Icons.sports_basketball,
      SportType.mma => Icons.sports_mma,
      SportType.esports => Icons.sports_esports,
    };
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: preferredSize.height,
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: SportType.values.map((sport) {
          final name = sport.name[0].toUpperCase() + sport.name.substring(1);
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: ChoiceChip(
              label: Row(
                children: [
                  Icon(
                    getIcon(sport),
                    size: 18,
                    color: context.colorScheme.onPrimary,
                  ),
                  const SizedBox(width: 8),
                  Text(name),
                ],
              ),
              selected: true,
              showCheckmark: false,
              onSelected: (_) {},
              backgroundColor: context.colorScheme.surfaceContainerHighest,
              selectedColor: context.colorScheme.primary,
              labelStyle: TextStyle(color: Colors.black),
            ),
          );
        }).toList(),
      ),
    );
  }
}
