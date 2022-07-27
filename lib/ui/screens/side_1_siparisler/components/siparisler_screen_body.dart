import 'package:flutter/material.dart';
import 'package:hesap_owner_interface/ui/screens/side_1_siparisler/components/siparisler_control_area.dart';
import 'package:hesap_owner_interface/ui/screens/side_1_siparisler/components/siparisler_header.dart';
import 'package:hesap_owner_interface/ui/themes/color_constants.dart';

class HesapSiparislerBody extends StatefulWidget {
  const HesapSiparislerBody({Key? key}) : super(key: key);

  @override
  State<HesapSiparislerBody> createState() => _HesapSiparislerBodyState();
}

class _HesapSiparislerBodyState extends State<HesapSiparislerBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        primary: false,
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: const [
            SiparislerHeader(),
            SizedBox(height: defaultPadding),
            SiparislerControlArea(),
          ],
        ),
      ),
    );
  }
}
