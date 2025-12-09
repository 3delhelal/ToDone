import '/core/helpers/app_enums.dart';

abstract class BaseSoundRepository {
  void playTaskSound({required SoundType soundType});
}

class PlaySoundParams {
  final SoundType soundType;

  const PlaySoundParams({required this.soundType});

  factory PlaySoundParams.taskCompleted() {
    return const PlaySoundParams(soundType: SoundType.taskComplete);
  }

  factory PlaySoundParams.taskDeleted() {
    return const PlaySoundParams(soundType: SoundType.taskDelete);
  }

  factory PlaySoundParams.taskUndone() {
    return const PlaySoundParams(soundType: SoundType.taskUndone);
  }

  factory PlaySoundParams.taskCreated() {
    return const PlaySoundParams(soundType: SoundType.taskCreated);
  }
}
