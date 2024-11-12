import 'package:get_it/get_it.dart';
import 'package:zaracast/src/core/api/podcast_index_client.dart';
import 'package:zaracast/src/core/config/api_config.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerLazySingleton<PodcastIndexClient>(
    () => PodcastIndexClient(
      apiKey: ApiConfig.podcastIndexApiKey,
      apiSecret: ApiConfig.podcastIndexApiSecret,
    ),
  );
}

PodcastIndexClient api = getIt.get<PodcastIndexClient>();
