import 'package:flutter/material.dart';
import 'form_exercise.dart';

class LoginExercise extends StatelessWidget {
  const LoginExercise({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _backButton(),
            const Text(
              'Vamos criar uma conta?',
              style: TextStyle(fontSize: 25.0),
            ),
          ],
        ),
        _text(),
        FormExercise(),
      ],
    );
  }

  Widget _backButton() {
    return Container(
      width: 55,
      height: 55,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: const Icon(Icons.arrow_back),
    );
  }

  Widget _text() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('Criar', style: TextStyle(fontSize: 40.0)),
          Text(
            'Conta',
            style: TextStyle(fontSize: 40.0),
          ),
        ],
      ),
    );
  }
}
