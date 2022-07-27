import 'package:flutter/material.dart';
import "package:flutter_bloc/flutter_bloc.dart";
import 'package:hesap_owner_interface/cubit/changing_body/changing_body_cubit.dart';
import 'package:hesap_owner_interface/cubit/menu_controller/menu_controller_cubit.dart';
import 'package:hesap_owner_interface/ui/screens/side_1_siparisler/siparisler_screen.dart';
import 'package:hesap_owner_interface/ui/screens/side_2_gecmis_siparisler/gecmis_siparisler_screen.dart';
import 'package:hesap_owner_interface/ui/screens/side_3_menu_ve_urunler/menu_ve_urunler_screen.dart';
import 'package:hesap_owner_interface/ui/screens/side_4_ayarlar/ayarlar_screen.dart';
import 'package:provider/provider.dart';
import 'components/side_menu.dart';

class HesapMainScreen extends StatefulWidget {
  @override
  State<HesapMainScreen> createState() => _HesapMainScreenState();
}

class _HesapMainScreenState extends State<HesapMainScreen> {
  @override
  initState() {
    super.initState();
    // context.read<StudentCubit>().loadStudentInfos();
  }

  @override
  Widget build(BuildContext context) {
    var pages = const [
      HesapSiparislerScreen(),
      HesapGecmisSiparislerScreen(),
      HesapMenuVeUrunlerScreen(),
      HesapAyarlarScreen()
    ];
    return BlocBuilder<ChangingBodyCubit, ChangingBodyState>(
      builder: (context, state) => Scaffold(
        key: context.read<MenuControllerCubit>().scaffoldKey,
        drawer: const SideMenu(),
        body: SafeArea(
          child: pages[state.index],
        ),
      ),
    );
  }
}
