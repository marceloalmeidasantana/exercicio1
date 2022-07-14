import 'package:flutter/material.dart';
import 'login_exercise_Mobx.dart';

typedef MobxSet = void Function(String value);

class FieldsEntry extends StatefulWidget {
  final String name;
  final IconData? icon;
  final MobxSet? setMobx;
  final bool isValid;
  final String msgError;
  final bool hideText;
  final VoidCallback? iconPressed;

  const FieldsEntry(
      {Key? key,
      required this.name,
      this.icon,
      this.setMobx,
      required this.isValid,
      required this.msgError,
      this.hideText = false,
      this.iconPressed})
      : super(key: key);

  @override
  State<FieldsEntry> createState() => _FieldsEntryState();
}

class _FieldsEntryState extends State<FieldsEntry> {
  LoginExerciseMobx loginExerciseMobx = LoginExerciseMobx();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.hideText,
      decoration: InputDecoration(
        errorText: !widget.isValid ? widget.msgError : null,
        filled: true,
        suffixIcon:
            IconButton(icon: Icon(widget.icon), onPressed: widget.iconPressed),
        fillColor: Colors.white,
        labelText: widget.name,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
      onChanged: widget.setMobx,
    );
  }
}
