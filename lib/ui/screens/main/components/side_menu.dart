import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hesap_owner_interface/cubit/changing_body/changing_body_cubit.dart';
import 'package:hesap_owner_interface/ui/widgets/molecules/draw_list_tile.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Image.asset(
              "assets/images/hesap_white_192.png",
              width: 80,
              height: 80,
            ),
          ),
          DrawerListTile(
            title: "Siparişler",
            svgSrc: "assets/icons/menu_dashbord.svg",
            press: () {
              context.read<ChangingBodyCubit>().onChangedButton(0);
            },
          ),
          DrawerListTile(
            title: "Geçmiş Siparişler",
            svgSrc: "assets/icons/menu_dashbord.svg",
            press: () {
              context.read<ChangingBodyCubit>().onChangedButton(1);
            },
          ),
          DrawerListTile(
            title: "Menü ve Ürünler",
            svgSrc: "assets/icons/menu_dashbord.svg",
            press: () {
              context.read<ChangingBodyCubit>().onChangedButton(2);
            },
          ),
          DrawerListTile(
            title: "Ayarlar",
            svgSrc: "assets/icons/menu_dashbord.svg",
            press: () {
              context.read<ChangingBodyCubit>().onChangedButton(3);
            },
          ),
        ],
      ),
    );
  }
}
