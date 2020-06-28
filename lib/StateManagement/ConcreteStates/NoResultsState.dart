import '../IState.dart';
import 'package:flutter/material.dart';

import '../StateContext.dart';
import 'LoadingState.dart';

class NoResultsState implements IState {
  @override
  Future nextState(StateContext context) async {
    context.setState(LoadingState());
  }

  @override
  Widget render() {
    String texto = "No se recibieron datos";
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(texto,style: TextStyle(fontSize: 20,color: Colors.orange),textAlign: TextAlign.center),
    );
  }
}

