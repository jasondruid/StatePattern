import 'dart:math';

class FakeApi {

  String answer = "La información del servidor ha sido recibida con exito!";
  Random random = new Random();
  Future<String> getAnswer() async {
    
    return Future.delayed(
      const Duration(seconds: 1),
      () {
        if (random.nextBool()) 
        {
          return _getRandomAnswer();
        }
        throw Exception('Unexpected error');
      },
    );
  }

  String _getRandomAnswer() {
    if (random.nextBool()) {
      return null;
    }
    else{
      return answer;
    }
  }
}

