
import 'package:flutter/material.dart';
import '../IState.dart';
import '../StateContext.dart';
import 'LoadingState.dart';

class CompletedState implements IState {
  final String names;

  const CompletedState(this.names);

  @override
  Future nextState(StateContext context) async {
    context.setState(LoadingState());
  }

  @override
  Widget render() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(names.toString(),style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
    );
  }
}


