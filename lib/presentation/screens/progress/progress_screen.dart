import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  static const name = 'progress_screen';

  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Progress Indicators',
        ),
      ),
      body: _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 30),
          const Text('Circular Progress Indicator'),
          const SizedBox(height: 10),
          const CircularProgressIndicator(
            strokeWidth: 10,
            backgroundColor: Colors.black45,
          ),
          const SizedBox(height: 20),
          const Text('Circular y Linear Indicator Controlado'),
          const SizedBox(height: 10),
          _ControlledProgressIndicator()
        ],
      ),
    );
  }
}

class _ControlledProgressIndicator extends StatefulWidget {
  @override
  State<_ControlledProgressIndicator> createState() =>
      __ControlledProgressIndicatorState();
}

class __ControlledProgressIndicatorState
    extends State<_ControlledProgressIndicator> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: StreamBuilder<double>(
          stream: Stream.periodic(
            const Duration(
              milliseconds: 300,
            ),
            (value) => (value * 2) / 100,
          ).takeWhile(
            (value) => value < 100,
          ),
          builder: (context, snapshot) {
            final progressValue = snapshot.data ?? 0;
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(
                  strokeWidth: 2,
                  value: progressValue,
                  backgroundColor: Colors.black12,
                ),
                Expanded(
                    child: LinearProgressIndicator(
                  value: progressValue,
                ))
              ],
            );
          }),
    );
  }
}
