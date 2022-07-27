import 'package:flutter/material.dart';
import 'package:hesap_owner_interface/responsive.dart';
import 'package:hesap_owner_interface/ui/screens/side_2_gecmis_siparisler/components/gecmis_siparisler_right_side.dart';
import 'package:hesap_owner_interface/ui/themes/color_constants.dart';
import 'package:hesap_owner_interface/ui/widgets/organisms/teacher_pressable_table_area.dart';
import 'package:hesap_owner_interface/ui/widgets/organisms/teacher_top_management_area.dart';

class GecmisSiparislerControlArea extends StatelessWidget {
  const GecmisSiparislerControlArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 5,
          child: Column(
            children: [
              const TopManagemenetArea(),
              const SizedBox(height: defaultPadding),
              const PressableTableArea(),
              if (Responsive.isMobile(context))
                const SizedBox(height: defaultPadding),
              if (Responsive.isMobile(context)) const GecmisSiparislerRightSide(),
            ],
          ),
        ),
        if (!Responsive.isMobile(context)) const SizedBox(width: defaultPadding),
        // On Mobile means if the screen is less than 850 we dont want to show it
        if (!Responsive.isMobile(context))
          const Expanded(
            flex: 2,
            child: GecmisSiparislerRightSide(),
          ),
      ],
    );
  }
}
