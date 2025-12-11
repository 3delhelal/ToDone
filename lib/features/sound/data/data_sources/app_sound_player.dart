import 'package:audioplayers/audioplayers.dart';
import '/core/helpers/extensions/generic_extensions.dart';
import '/core/helpers/app_enums.dart';
import '/core/resources/assets_manager.dart';
import 'sound_player_interface.dart';

class AppSoundPlayer implements SoundPlayerDataSource {
  final AudioPlayer _audioPlayer;

  final Map<String, Source> _soundCache = {};

  AppSoundPlayer({AudioPlayer? audioPlayer})
    : _audioPlayer = audioPlayer ?? AudioPlayer();

  @override
  Future<void> initialize() async {
    await _audioPlayer.setReleaseMode(ReleaseMode.stop);
    await _preloadSounds();
  }

  /// Preload all sounds into memory
  Future<void> _preloadSounds() async {
    final soundPaths = [
      AssetsManager.taskCompleteSound,
      AssetsManager.taskDeleteSound,
      AssetsManager.taskUndoneSound,
      AssetsManager.taskCreatedSound,
    ];

    for (final path in soundPaths) {
      _soundCache[path] = AssetSource(path.replaceFirst('assets/', ''));
    }
  }

  @override
  void playSound({required SoundType soundType}) async {
    return playSoundFromPath(path: soundType.path);
  }

  @override
  void playSoundFromPath({required String path}) async {
    await _audioPlayer.stop(); // Stops previous sound if exists.
    // Get cached source or create new one
    final source =
        _soundCache[path] ?? AssetSource(path.replaceFirst('assets/', ''));
    await _audioPlayer.play(source);
  }

  @override
  void stopSound() async {
    await _audioPlayer.stop();
  }

  @override
  Future<void> dispose() async {
    await _audioPlayer.dispose();
    _soundCache.clear();
  }
}
