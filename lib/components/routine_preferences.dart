import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../configuration.dart';

class RoutinePreferences extends StatelessWidget {
  const RoutinePreferences({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Configuration config = context.watch<Configuration>();

    final String _beginButtonText = 'Begin';
    final String _backButtonText = 'Go back';

    bool _showBreathingQueues = config.breathingQueues;
    bool _showProcessQueues = config.processQueues;
    bool _showPrecautionQueues = config.precautionQueues;
    bool _showBenefitQueues = config.benefitQueues;
    bool _showAllQueues = config.allQueues;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Preferences'),
      ),
      body: SafeArea(
        child: Dialog(
          child: Column(
            children: [
              SwitchListTile(
                title: const Text('Show breathing queues'),
                onChanged: (bool value) {
                  config.changeBreathingPreferenceState(value);
                  },
                value: _showBreathingQueues,

              ),
              SwitchListTile(
                title: const Text('Show process queues'),
                onChanged: (bool value) {
                  config.changeProcessPreferenceState(value);
                },
                value: _showProcessQueues,

              ),
              SwitchListTile(
                title: const Text('Show precaution queues'),
                onChanged: (bool value) {
                  config.changePrecautionPreferenceState(value);
                },
                value: _showPrecautionQueues,

              ),
              SwitchListTile(
                title: const Text('Show benefit queues'),
                onChanged: (bool value) {
                  config.changeBenefitPreferenceState(value);
                },
                value: _showBenefitQueues,
              ),
              SwitchListTile(
                title: const Text('Select all'),
                onChanged: (bool value) {
                  config.changeAllQueueStates(value);
                },
                value: _showAllQueues,
              ),
              TextButton(
                child: Text(_backButtonText),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              ElevatedButton(
                child: Text(_beginButtonText),
                onPressed: () {
                  Navigator.pushNamed(context, '/routine');
                },
              )
            ]
          ),
        ),
      ),
    );
  }
}

