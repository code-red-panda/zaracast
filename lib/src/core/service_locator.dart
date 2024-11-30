import 'package:get_it/get_it.dart';
import 'package:zaracast/src/core/api/podcast_index_client.dart';
import 'package:zaracast/src/core/config/api_config.dart';
import 'package:zaracast/src/core/database/app_database.dart';
import 'package:zaracast/src/core/services/connectivity_service.dart';
import 'package:zaracast/src/core/database/queries.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerLazySingleton<ConnectivityService>(
    () => ConnectivityService(),
  );

  getIt.registerLazySingleton<PodcastIndexClient>(
    () => PodcastIndexClient(
      apiKey: ApiConfig.podcastIndexApiKey,
      apiSecret: ApiConfig.podcastIndexApiSecret,
    ),
  );

//  getIt.registerLazySingleton<AppDatabase>(
  //   () => AppDatabase(),
  //);

  getIt.registerLazySingleton<Queries>(
    () => Queries(AppDatabase()),
  );
}

PodcastIndexClient api = getIt.get<PodcastIndexClient>();
ConnectivityService connectivity = getIt.get<ConnectivityService>();
//AppDatabase db = getIt.get<AppDatabase>();
Queries db = getIt.get<Queries>();
