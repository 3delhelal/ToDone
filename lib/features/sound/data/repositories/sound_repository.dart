import '/core/helpers/app_enums.dart';
import '../../domain/repositories/base_sound_repository.dart';
import '../data_sources/sound_player_interface.dart';

class SoundRepositoryImpl implements BaseSoundRepository {
  final SoundPlayerDataSource _soundPlayer;

  SoundRepositoryImpl({required SoundPlayerDataSource soundPlayer})
    : _soundPlayer = soundPlayer;

  @override
  void playTaskSound({required SoundType soundType}) async {
    _soundPlayer.playSound(soundType: soundType);
  }
}
