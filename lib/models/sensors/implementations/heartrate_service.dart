import 'package:workout_companion_flutter/models/sensors/service.dart';
import 'package:workout_companion_flutter/models/sensors/service_type.dart';

class HeartrateService extends Service<int> {
  HeartrateService(String guid)
      : super(
          guid: guid,
          type: const ServiceType.heartrate(),
        );
}
