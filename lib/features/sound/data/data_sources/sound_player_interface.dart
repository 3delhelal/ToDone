import '/core/helpers/app_enums.dart';

abstract class SoundPlayerDataSource {
  Future<void> initialize();

  void playSound({required SoundType soundType});

  void playSoundFromPath({required String path});

  void stopSound();

  Future<void> dispose();
}
