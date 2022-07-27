import 'package:flutter/material.dart';
import 'package:hesap_owner_interface/ui/themes/color_constants.dart';
import 'package:hesap_owner_interface/ui/themes/colors.dart';

import '../../../widgets/molecules/chart.dart';
import '../../../widgets/molecules/rightside_info_card.dart';

class MenuVeUrunlerRightSide extends StatelessWidget {
  const MenuVeUrunlerRightSide({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Detaylar",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          Chart(),
          RightInfoCard(
            svgSrc: "assets/icons/Documents.svg",
            title: "Siparişler",
            typeOf: "sipariş",
            numberOf: 4,
          ),
        ],
      ),
    );
  }
}
