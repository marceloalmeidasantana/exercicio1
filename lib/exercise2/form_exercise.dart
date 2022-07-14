import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:untitled/exercise2/fields_entry.dart';
import 'package:untitled/exercise2/login_exercise_Mobx.dart';

class FormExercise extends StatelessWidget {
  FormExercise({Key? key}) : super(key: key);

  LoginExerciseMobx loginExerciseMobx = LoginExerciseMobx();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        width: 370,
        height: 500,
        child: Observer(builder: (_) {
          IconData passwordIcon = !loginExerciseMobx.passwordVisible
              ? Icons.visibility_off_outlined
              : Icons.visibility_outlined;
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FieldsEntry(
                name: 'Name',
                setMobx: loginExerciseMobx.setName,
                isValid: loginExerciseMobx.isNameValid,
                msgError: "O nome deve ser maior que 6 dígitos",
              ),
              FieldsEntry(
                name: 'E-mail',
                setMobx: loginExerciseMobx.setEmail,
                isValid: loginExerciseMobx.isEmailValid,
                msgError: 'Deve ser um e-mail válido',
              ),
              FieldsEntry(
                  name: 'Password',
                  setMobx: loginExerciseMobx.setPassword,
                  isValid: loginExerciseMobx.isPasswordValid,
                  msgError: 'A senha teve ter no mínimo 6 digitos',
                  icon: passwordIcon,
                  iconPressed: loginExerciseMobx.changePassword,
                  hideText: loginExerciseMobx.passwordVisible),
              SizedBox(
                height: 60,
                width: 370,
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                  ),
                  onPressed: loginExerciseMobx.formValid ? () {} : null,
                  child: const Text('Criar conta'),
                ),
              ),
              const Text('Já possui uma conta?         Login'),
              const Text('Ou continuar com'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 50,
                    width: 160,
                    child: ElevatedButton.icon(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                        ),
                        backgroundColor:
                        MaterialStateProperty.all(Colors.white),
                      ),
                      onPressed: () {},
                      icon: Image.asset('images/google.png'),
                      label: const Text(
                        'Google',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: 160,
                    child: ElevatedButton.icon(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                        ),
                        backgroundColor:
                        MaterialStateProperty.all(Colors.white),
                      ),
                      onPressed: () {},
                      icon: Image.asset('images/face.jpg'),
                      label: const Text(
                        'Facebook',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          );
        }),
      ),
    );
  }
}
