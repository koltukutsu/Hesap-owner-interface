import 'package:flutter/material.dart';
import 'package:hesap_owner_interface/responsive.dart';
import 'package:hesap_owner_interface/ui/themes/color_constants.dart';
import 'package:hesap_owner_interface/ui/themes/colors.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: defaultPadding),
      padding: const EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: Colors.white10),
      ),
      child: Row(
        children: [
          Image.asset(
            "assets/images/hesap_192.png",
            height: 38,
          ),
          if (!Responsive.isMobile(context))
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
              child: Text("Mehmet Semih BABACAN"),
            ),
          IconButton(
              icon:
                  const Icon(Icons.keyboard_arrow_down, color: AppColors.white),
              onPressed: () {}),
        ],
      ),
    );
  }
}
