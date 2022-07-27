// import 'package:admin/cubit/menu_controller/menu_controller_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hesap_owner_interface/cubit/menu_controller/menu_controller_cubit.dart';
import 'package:hesap_owner_interface/responsive.dart';
import 'package:hesap_owner_interface/ui/widgets/molecules/profile_card.dart';
import 'package:hesap_owner_interface/ui/widgets/molecules/search_feald.dart';

class GecmisSiparislerHeader extends StatelessWidget {
  const GecmisSiparislerHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          BlocBuilder<MenuControllerCubit, MenuControllerState>(
            builder: (context, state) => IconButton(
              icon: Icon(Icons.menu),
              // onPressed: (){},
              onPressed:
                  BlocProvider.of<MenuControllerCubit>(context).controlMenu,
            ),
          ),
        if (!Responsive.isMobile(context))
          Text(
            "Düzenleme Ekranı",
            style: Theme.of(context).textTheme.headline6,
          ),
        if (!Responsive.isMobile(context))
          Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
        Expanded(child: SearchField()),
        ProfileCard()
      ],
    );
  }
}
