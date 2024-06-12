import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_basic/sample_flutter_bloc/bloc/newCounter/new_counter_bloc.dart';

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({super.key});

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  context.read<NewCounterBloc>().add(Decrement());
                },
                child: Text('Decrement '),
              ),
              SizedBox(
                width: 16,
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<NewCounterBloc>().add(Increment());
                },
                child: Text('Increment'),
              ),
            ],
          );
  }
}