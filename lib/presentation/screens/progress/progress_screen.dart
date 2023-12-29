import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {

  static const name = 'progress_screen';


  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Progress Indicators'),
      ),
      body: _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: const [
          SizedBox(
            height: 30
          ),
          Text('Circular Progress Indicator'),
          SizedBox(height: 10,),
          CircularProgressIndicator( strokeWidth: 2, backgroundColor: Colors.black45,),
          SizedBox(height: 20,),
          Text('Circular Indicator Controlado'),
          SizedBox(height: 10,),_ControllerProgressIndicator(),
        ],
      ),
    );
  }
}


class _ControllerProgressIndicator extends StatelessWidget {
  const _ControllerProgressIndicator();

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}