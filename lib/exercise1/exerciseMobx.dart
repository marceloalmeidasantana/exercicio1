import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:untitled/exercise1/stream_page_mobx.dart';

class ExerciseMobx extends StatefulWidget {
  const ExerciseMobx({Key? key}) : super(key: key);

  @override
  State<ExerciseMobx> createState() => _ExerciseMobxState();
}

enum Option{masculino, feminino, naoInformado}

class _ExerciseMobxState extends State<ExerciseMobx> {
  late FormController formController;


  @override
  void initState(){
    super.initState();

    formController = FormController();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              Observer(
                  builder: (_){
                    return Column(
                      children: [
                        ListTile(
                          title: const Text('Masculino'),
                          leading: Radio<Option>(
                              value: Option.masculino,
                              groupValue: formController.isMarked,
                              onChanged: (Option? value){
                                formController.checkMarked(Option.masculino);
                              }
                          ),
                        ),
                        ListTile(
                          title: const Text('Feminino'),
                          leading: Radio<Option>(
                              value:  Option.feminino,   // formController.isMarked,
                              groupValue: formController.isMarked,
                              onChanged: (Option? value){
                                formController.checkMarked(Option.feminino);
                              }
                          ),
                        ),
                        ListTile(
                          title: const Text('Não Informado'),
                          leading: Radio<Option>(
                              value:  Option.naoInformado,   // formController.isMarked,
                              groupValue: formController.isMarked,
                              onChanged: (Option? value){
                                formController.checkMarked(Option.naoInformado);
                              }
                          ),
                        ),
                      ],
                    );
                  }
              ),
            ],
          )
      ),
    );
  }
}