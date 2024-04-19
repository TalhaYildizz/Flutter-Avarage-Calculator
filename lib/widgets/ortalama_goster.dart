import 'package:flutter/material.dart';
import 'package:myapp/constants/app_constans.dart';

class OrtalamaGoster extends StatelessWidget {
  const OrtalamaGoster(
      {required this.dersSayisi, required this.ortalama, super.key});

  final double ortalama;
  final int dersSayisi;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          dersSayisi > 0 ? "$dersSayisi Ders Girildi" : "Ders Seçiniz",
          style: Sabitler.ortalamaGosterBody,
        ),
        Text(
          ortalama >= 0 ? "${ortalama.toStringAsFixed(2)}" : "0.0",
          style: Sabitler.ortalamaStyle,
        ),
        Text(
          "Ortalama",
          style: Sabitler.ortalamaGosterBody,
        )
      ],
    );
  }
}
