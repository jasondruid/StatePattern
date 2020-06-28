import 'package:flutter/material.dart';
import 'StateContext.dart';

abstract class IState {
  Future nextState(StateContext context);
  Widget render();
}

