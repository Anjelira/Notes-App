import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_basic/sample_flutter_bloc/bloc/newCounter/new_counter_bloc.dart';
import 'package:flutter_bloc_basic/sample_flutter_bloc/widgets/button_widget.dart';
import 'package:flutter_bloc_basic/sample_flutter_bloc/widgets/result_widget.dart';

class NewCounterPage extends StatefulWidget {
  const NewCounterPage({super.key});

  @override
  State<NewCounterPage> createState() => _NewCounterPageState();
}

class _NewCounterPageState extends State<NewCounterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Counter Page'),
        elevation: 4,
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Your Value'),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          ResultWidget(),
          SizedBox(
            height: 16,
          ),
          ButtonWidget(),
        ],
      ),
    );
  }
}
