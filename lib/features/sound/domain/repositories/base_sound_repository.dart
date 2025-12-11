import '/core/helpers/app_enums.dart';

abstract class BaseSoundRepository {
  void playTaskSound({required SoundType soundType});
}
