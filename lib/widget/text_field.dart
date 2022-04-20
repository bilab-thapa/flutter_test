import 'package:flutter/material.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      width: size.width * 0.9,
      decoration: const BoxDecoration(
        color: Colors.black,
        //borderRadius: BorderRadius.circular(20),
      ),
      child: child,
    );
  }
}
