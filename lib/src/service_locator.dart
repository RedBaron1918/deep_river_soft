import 'package:deep_river_soft/src/bloc/match_bloc.dart';
import 'package:deep_river_soft/src/data/data_sources/match_local_data_source.dart';
import 'package:deep_river_soft/src/data/data_sources/match_remote_data_source.dart';
import 'package:deep_river_soft/src/data/repositories/match_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:local_storage/local_storage.dart';

final sl = GetIt.instance;
Future<void> initServiceLocator() async {
  final localStorage = HiveLocalStorage();
  sl.registerLazySingleton<LocalStorage>(() => localStorage);

  sl.registerLazySingleton<MockMatchRemoteDataSource>(
    () => MockMatchRemoteDataSource(),
  );
  sl.registerLazySingleton<MatchLocalDataSourceImpl>(
    () => MatchLocalDataSourceImpl(sl<LocalStorage>()),
  );

  sl.registerLazySingleton<MatchRepositoryImpl>(
    () => MatchRepositoryImpl(
      remoteDataSource: sl<MockMatchRemoteDataSource>(),
      localDataSource: sl<MatchLocalDataSourceImpl>(),
    ),
  );

  sl.registerFactory(
    () => MatchBloc(matchRepository: sl<MatchRepositoryImpl>()),
  );
}
