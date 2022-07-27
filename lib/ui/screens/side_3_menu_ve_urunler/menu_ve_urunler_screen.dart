import 'package:flutter/material.dart';
import 'package:hesap_owner_interface/responsive.dart';
import 'package:hesap_owner_interface/ui/screens/main/components/side_menu.dart';
import 'package:hesap_owner_interface/ui/screens/side_3_menu_ve_urunler/components/menu_ve_urunler_body.dart';

class HesapMenuVeUrunlerScreen extends StatelessWidget {
  const HesapMenuVeUrunlerScreen({Key? key}) : super(key: key);

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
          child: HesapMenuVeUrunlerBody(),
        ),
      ],
    );
  }
}
