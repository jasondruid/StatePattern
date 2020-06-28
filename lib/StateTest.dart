import 'package:flutter/material.dart';
import 'StateManagement/ConcreteStates/NoResultsState.dart';
import 'StateManagement/IState.dart';
import 'StateManagement/StateContext.dart';

class StateExample extends StatefulWidget {
  @override
  _StateExampleState createState() => _StateExampleState();
}

class _StateExampleState extends State<StateExample> {
  var _stateContext = StateContext();

  Future<void> _changeState() async {
    await _stateContext.nextState();
  }

  @override
  void dispose() {
    _stateContext.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollBehavior(),
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('Solicitar información al servidor'),color: Colors.blue,
              textColor: Colors.white,onPressed: _changeState,),
            const SizedBox(height: 40),
            StreamBuilder(
              initialData: NoResultsState(),
              stream: _stateContext.outState,
              builder: (_, AsyncSnapshot<IState> snapshot) =>
                  snapshot.data.render(),
            ),
          ],),),);
  }
}

