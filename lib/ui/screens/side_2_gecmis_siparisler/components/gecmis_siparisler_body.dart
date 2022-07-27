import 'package:flutter/material.dart';
import 'package:hesap_owner_interface/ui/screens/side_2_gecmis_siparisler/components/gecmis_siparisler_control_area.dart';
import 'package:hesap_owner_interface/ui/screens/side_2_gecmis_siparisler/components/gecmis_siparisler_header.dart';
import 'package:hesap_owner_interface/ui/themes/color_constants.dart';

class HesapGecmisSiparislerBody extends StatefulWidget {
  const HesapGecmisSiparislerBody({Key? key}) : super(key: key);

  @override
  State<HesapGecmisSiparislerBody> createState() => _HesapGecmisSiparislerBodyState();
}

class _HesapGecmisSiparislerBodyState extends State<HesapGecmisSiparislerBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        primary: false,
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: const [
            GecmisSiparislerHeader(),
            SizedBox(height: defaultPadding),
            GecmisSiparislerControlArea(),
          ],
        ),
      ),
    );

  }
}
