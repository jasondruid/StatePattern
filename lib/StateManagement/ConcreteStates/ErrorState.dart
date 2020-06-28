
import 'package:flutter/material.dart';

import '../IState.dart';
import '../StateContext.dart';
import 'LoadingState.dart';

class ErrorState implements IState {
  @override
  Future nextState(StateContext context) async {
    context.setState(LoadingState());
  }

  @override
  Widget render() {
    String texto = "Hubo un error al comunicarse con el servidor";
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(texto,style: TextStyle(fontSize: 20,color: Colors.red),
      textAlign: TextAlign.center),
    );
  }
}

