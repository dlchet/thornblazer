import 'package:flutter/material.dart';

/// Displays detailed information about a SampleItem.
class SampleItemDetailsView extends StatelessWidget {
  final Object? arguments;

  const SampleItemDetailsView({super.key, required this.arguments});

  static const routeName = '/sample_item';

  @override
  Widget build(BuildContext context) {
    final args = arguments as Map;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item Details'),
      ),
      body: Center(
        child: Text('More Information Here ${args["itemNumber"]}'),
      ),
    );
  }
}
