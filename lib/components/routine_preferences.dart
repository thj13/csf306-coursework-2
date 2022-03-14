import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../configuration.dart';

class RoutinePreferences extends StatelessWidget {
  const RoutinePreferences({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Configuration config = context.watch<Configuration>();
    bool showBreathingQueues = config.breathingQueues;
    bool showProcessQueues = config.processQueues;
    bool showPrecautionQueues = config.precautionQueues;
    bool showBenefitQueues = config.benefitQueues;
    bool showAllQueues = config.allQueues;

    return Column(
      children: [
        SwitchListTile(
          title: const Text('Show breathing queues'),
          onChanged: (bool value) {
            config.changeBreathingPreferenceState(value);
            },
          value: showBreathingQueues,

        ),
        SwitchListTile(
          title: const Text('Show process queues'),
          onChanged: (bool value) {
            config.changeProcessPreferenceState(value);
          },
          value: showProcessQueues,

        ),
        SwitchListTile(
          title: const Text('Show precaution queues'),
          onChanged: (bool value) {
            config.changePrecautionPreferenceState(value);
          },
          value: showPrecautionQueues,

        ),
        SwitchListTile(
          title: const Text('Show benefit queues'),
          onChanged: (bool value) {
            config.changeBenefitPreferenceState(value);
          },
          value: showBenefitQueues,
        ),
        SwitchListTile(
          title: const Text('Select all'),
          onChanged: (bool value) {
            config.changeAllQueueStates(value);
          },
          value: showAllQueues,
        ),
      ]
    );
  }
}

