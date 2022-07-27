// import 'package:admin/cubit/menu_controller/menu_controller_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hesap_owner_interface/cubit/changing_body/changing_body_cubit.dart';
import 'package:hesap_owner_interface/cubit/menu_controller/menu_controller_cubit.dart';
import 'package:hesap_owner_interface/ui/routes/routes.dart';
import 'package:hesap_owner_interface/ui/screens/login/login_screen.dart';
import 'package:hesap_owner_interface/ui/screens/main/main_screen.dart';
import 'package:hesap_owner_interface/ui/themes/colors.dart';
import 'themes/color_constants.dart';

class HesapAdminAppScreen extends StatelessWidget {
  const HesapAdminAppScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ChangingBodyCubit()),
        BlocProvider(create: (context) => MenuControllerCubit()),
        // BlocProvider(create: (context) => TeacherCubit(TeacherRepository())),
        // BlocProvider(create: (context) => LoginCubit(LoginRepository())),
        // BlocProvider(create: (context) => StudentCubit(StudentRepository())),
      ],
      // child: BlocBuilder<ChangingBodyCubit, ChangingBodyState>(
      //     builder: (context, state) {
      //   return MaterialApp(
      //     debugShowCheckedModeBanner: false,
      //     title: 'Admin Paneli',
      //     theme: ThemeData.dark().copyWith(
      //       scaffoldBackgroundColor: bgColor,
      //       textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
      //           .apply(bodyColor: Colors.white),
      //       canvasColor: secondaryColor,
      //     ),
      //     initialRoute: ROUTE_LOGIN,
      //     routes: {
      //       ROUTE_MAIN: (context) => MainScreen(),
      //       ROUTE_LOGIN: (context) => LoginScreen(),
      //     },
      //   );
      // }),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Hesap Owner Interface',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: AppColors.primary,
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
              .apply(bodyColor: AppColors.white),
          canvasColor: AppColors.primary,
        ),
        initialRoute: ROUTE_LOGIN,
        routes: {
          ROUTE_MAIN: (context) => HesapMainScreen(),
          ROUTE_LOGIN: (context) => const HesapLoginScreen(),
        },
      ),
    );
  }
}
