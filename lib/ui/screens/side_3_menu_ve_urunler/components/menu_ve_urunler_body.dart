import 'package:flutter/material.dart';
import 'package:hesap_owner_interface/ui/screens/side_3_menu_ve_urunler/components/menu_ve_urunler_control_area.dart';
import 'package:hesap_owner_interface/ui/screens/side_3_menu_ve_urunler/components/menu_ve_urunler_header.dart';
import 'package:hesap_owner_interface/ui/themes/color_constants.dart';

class HesapMenuVeUrunlerBody extends StatefulWidget {
  const HesapMenuVeUrunlerBody({Key? key}) : super(key: key);

  @override
  State<HesapMenuVeUrunlerBody> createState() => _HesapMenuVeUrunlerBodyState();
}

class _HesapMenuVeUrunlerBodyState extends State<HesapMenuVeUrunlerBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        primary: false,
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: const [
            MenuVeUrunlerHeader(),
            SizedBox(height: defaultPadding),
            MenuVeUrunlerControlArea(),
          ],
        ),
      ),
    );

  }
}
