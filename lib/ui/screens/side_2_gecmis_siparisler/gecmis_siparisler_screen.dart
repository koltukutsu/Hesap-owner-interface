import 'package:flutter/material.dart';
import 'package:hesap_owner_interface/responsive.dart';
import 'package:hesap_owner_interface/ui/screens/main/components/side_menu.dart';
import 'package:hesap_owner_interface/ui/screens/side_2_gecmis_siparisler/components/gecmis_siparisler_body.dart';

class HesapGecmisSiparislerScreen extends StatelessWidget {
  const HesapGecmisSiparislerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // We want this side menu only for large screen
        if (Responsive.isDesktop(context))
          const Expanded(
            // default flex = 1
            // and it takes 1/6 part of the screen
            child: SideMenu(),
          ),
        const Expanded(
          // It takes 5/6 part of the screen
          flex: 5,
          child: HesapGecmisSiparislerBody(),
        ),
      ],
    );
  }
}
