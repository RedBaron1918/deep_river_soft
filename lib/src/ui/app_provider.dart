import 'package:deep_river_soft/src/data/data_sources/match_remote_data_source.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:local_storage/local_storage.dart';

import '../data/repositories/match_repository.dart';

class AppProvider extends StatefulWidget {
  const AppProvider({super.key, required this.child});

  final Widget child;

  @override
  State<AppProvider> createState() => _AppProviderState();
}

class _AppProviderState extends State<AppProvider> {
  // final LocalStorage _localStorage = SharedPrefsService();
  final LocalStorage _localStorage = HiveLocalStorage();

  late final MockMatchRemoteDataSource matchRemoteDataSource =
      MockMatchRemoteDataSource();
  // late final SelectionLocalDataSourceImpl selectionLocalDataSource = SelectionLocalDataSourceImpl(_localStorage);

  late final MatchRepositoryImpl matchRepository = MatchRepositoryImpl(
    remoteDataSource: matchRemoteDataSource,
  );

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<LocalStorage>(
          create: (BuildContext context) => _localStorage,
        ),
      ],
      child: Builder(
        builder: (context) {
          return widget.child;
        },
      ),
    );
  }
}
