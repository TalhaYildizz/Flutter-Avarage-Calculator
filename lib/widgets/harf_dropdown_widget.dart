import 'package:flutter/material.dart';

import '../constants/app_constans.dart';
import '../helper/data_helper.dart';

class HarfDropdownWidget extends StatefulWidget {
  final Function onHarfSecildi;
  const HarfDropdownWidget({required this.onHarfSecildi, super.key});

  @override
  State<HarfDropdownWidget> createState() => _HarfDropdownWidgetState();
}

class _HarfDropdownWidgetState extends State<HarfDropdownWidget> {
  double secilenHarfDegeri = 4;
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        padding: Sabitler.dropDownPadding,
        decoration: BoxDecoration(
            color: Sabitler.anaRenk.shade100.withOpacity(0.5),
            borderRadius: Sabitler.borderRadius),
        child: DropdownButton<double>(
          elevation: 16,
          iconEnabledColor: Sabitler.anaRenk,
          value: secilenHarfDegeri,
          onChanged: (deger) {
            setState(() {
              secilenHarfDegeri = deger!;
              widget.onHarfSecildi(deger);
            });
          },
          underline: Container(),
          items: DataHelper.tumDerslerinHarfleri(),
        ));
  }
}
