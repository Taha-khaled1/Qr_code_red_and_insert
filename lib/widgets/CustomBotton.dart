import 'package:flutter/material.dart';

class CustomBotton extends StatelessWidget {
  const CustomBotton({
    required this.color,
    required this.onTap,
    required this.text,
    Key? key,
  }) : super(key: key);
  final String text;
  final Color color;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: color,
        ),
        child: Text(
          text,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
