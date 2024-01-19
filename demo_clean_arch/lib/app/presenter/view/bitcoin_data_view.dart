import 'package:flutter/material.dart';

class BitcoinDataView extends StatefulWidget {
  const BitcoinDataView({super.key});

  @override
  State<BitcoinDataView> createState() => _BitcoinDataViewState();
}

class _BitcoinDataViewState extends State<BitcoinDataView> {
  @override
  Widget build(BuildContext context) {
    return const Column(
        children: [ElevatedButton(onPressed: null, child: Text("bitcoin"))]);
  }
}
