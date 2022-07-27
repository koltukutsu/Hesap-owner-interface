import 'package:flutter/material.dart';
import 'package:hesap_owner_interface/ui/screens/side_4_ayarlar/components/ayarlar_control_area.dart';
import 'package:hesap_owner_interface/ui/screens/side_4_ayarlar/components/ayarlar_header.dart';
import 'package:hesap_owner_interface/ui/themes/color_constants.dart';

class HesapAyarlarBody extends StatefulWidget {
  const HesapAyarlarBody({Key? key}) : super(key: key);

  @override
  State<HesapAyarlarBody> createState() => _HesapAyarlarBodyState();
}

class _HesapAyarlarBodyState extends State<HesapAyarlarBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        primary: false,
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: const [
            AyarlarHeader(),
            SizedBox(height: defaultPadding),
            AyarlarControlArea(),
          ],
        ),
      ),
    );
  }
}
