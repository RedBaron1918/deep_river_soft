import 'package:deep_river_soft/core/theme/app_colors.dart';
import 'package:deep_river_soft/src/bloc/match_bloc.dart';
import 'package:deep_river_soft/src/service_locator.dart';
import 'package:deep_river_soft/src/ui/widgets/custom_app_bar.dart';
import 'package:deep_river_soft/src/ui/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeProvider extends StatefulWidget {
  const HomeProvider({super.key});

  @override
  State<HomeProvider> createState() => _HomeProviderState();
}

class _HomeProviderState extends State<HomeProvider> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final bloc = sl<MatchBloc>()..add(const LoadMatches());
        return bloc;
      },
      child: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Container(
        decoration: BoxDecoration(gradient: AppColors.scaffoldBackground),
        child: CustomScrollView(
          slivers: [
            BlocBuilder<MatchBloc, MatchState>(
              builder: (context, state) {
                if (state.status != MatchStatus.success ||
                    state.allMatches.isEmpty) {
                  {
                    return const SliverToBoxAdapter(
                      child: Center(child: CircularProgressIndicator()),
                    );
                  }
                }
                return SliverList.builder(
                  itemCount: state.filteredMatches.length,
                  itemBuilder: (context, index) {
                    final match = state.filteredMatches[index];
                    final selectedBet = state.selectedOdds[match.id];

                    return CustomCard(
                      match: match,
                      selectedBet: selectedBet,
                      onBetSelected: (betType, odds) {
                        context.read<MatchBloc>().add(
                          OddSelected(matchId: match.id, oddKey: betType),
                        );
                      },
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
