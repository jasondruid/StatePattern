

import 'package:statepattern/FakeApi/FakeApi.dart';
import 'package:statepattern/StateManagement/StateContext.dart';
import 'package:flutter/material.dart';
import '../IState.dart';
import 'CompletedState.dart';
import 'ErrorState.dart';
import 'NoResultsState.dart';

class LoadingState implements IState {
  final FakeApi _api = FakeApi();

  @override
  Future nextState(StateContext context) async {
    try {
      var result;
      result = await _api.getAnswer();
      if (result == null) {
        context.setState(NoResultsState());
      } else {
        context.setState(CompletedState(result));
      }
    } on Exception {
      context.setState(ErrorState());
    }
  }

  @override
  Widget render() {
    return CircularProgressIndicator(
      backgroundColor: Colors.transparent,
      valueColor: AlwaysStoppedAnimation<Color>(
        Colors.black,
      ),
    );
  }
}

