import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:hesap_owner_interface/ui/routes/routes.dart';
import 'package:hesap_owner_interface/ui/themes/color_constants.dart';
import 'package:hesap_owner_interface/ui/themes/colors.dart';
import 'package:hesap_owner_interface/ui/themes/insets.dart';

class HesapLoginScreen extends StatelessWidget {
  const HesapLoginScreen({Key? key}) : super(key: key);

  Duration get loginTime => const Duration(milliseconds: 300);

  Future<String?> _authUser(LoginData data, BuildContext context) async {}

  Future<String?> _signupUser(var data) {
    debugPrint('Kullanıcı Adı: ${data.name!}, Şifri: ${data.password}');
    return Future.delayed(loginTime).then((_) {
      return null;
    });
  }

  Future<String?> _recoverPassword(String name) {
    debugPrint('Ad: $name');
    return Future.delayed(loginTime).then((_) {
      return null;
    });
  }

  @override
  Widget build(BuildContext context) {
    // return BlocBuilder<LoginCubit, LoginState>(builder: (context, state) {
    //   return FlutterLogin(
    //     title: 'بِسْــــــــــــــــــــــمِ ﷲِارَّحْمَنِ ارَّحِيم',
    //     // logo: AssetImage('assets/images/ecorp-lightblue.png'),
    //     logo: null,
    //     userType: LoginUserType.name,
    //     userValidator: (value) {
    //       return null; // no need to set rules, the username will be provided
    //     },
    //     passwordValidator: (value) {
    //       return null; // no need to set rules, the passwords will be provided
    //     },
    //
    //     onLogin: (data) async {
    //       if (data.name == "") {
    //         return "Kullanıcı Adı boş girildi";
    //       }
    //       if (data.password == "") {
    //         return "Kullanıcı Şifresi boş girildi";
    //       }
    //       debugPrint('Kullanıcı Adı: ${data.name}, Şifre: ${data.password}');
    //       await context.read<LoginCubit>().getLoginInformation(
    //           userName: data.name, userPassword: data.password);
    //       return Future.delayed(loginTime).then((_) {
    //         if (context.read<LoginCubit>().loginUserData.admin == true) {
    //           return null;
    //         } else if (context.read<LoginCubit>().loginUserData.admin ==
    //             false) {
    //           return null;
    //         } else {
    //           return 'Kullanıcı bulunmuyor';
    //         }
    //       });
    //     },
    //
    //     onSignup: _signupUser,
    //     onRecoverPassword: _recoverPassword,
    //
    //     messages: LoginMessages(
    //         userHint: "Kullanıcı Adı",
    //         passwordHint: "Şifre",
    //         loginButton: "Giriş Yap",
    //         forgotPasswordButton: 'Şifreni mi unuttun? Bizimle iletişime geç',
    //         recoverPasswordDescription:
    //             "Kullanıcı adını yazarsan, sana bir email yollayacağız",
    //         recoverPasswordButton: "Kurtar",
    //         recoverPasswordIntro: "Şifreni tazele",
    //         flushbarTitleError: "Hata",
    //         flushbarTitleSuccess: "Tamamdır",
    //         goBackButton: "Geri",
    //         recoverPasswordSuccess:
    //             "Bildirimin tarafımıza ulaştı. En kısa sürede seninle iletişime geçeceğiz"),
    //     hideForgotPasswordButton: false,
    //     // hideSignUpButton: false,
    //
    //     theme: LoginTheme(pageColorDark: bgColor),
    //     onSubmitAnimationCompleted: () {
    //       Navigator.of(context).pushReplacementNamed(ROUTE_MAIN);
    //     },
    //   );
    // });
    return FlutterLogin(
      title: "hesap",
      logo: 'assets/images/hesap_192.png',
      // logo: null,
      userType: LoginUserType.name,
      userValidator: (value) {
        return null; // no need to set rules, the username will be provided
      },
      passwordValidator: (value) {
        return null; // no need to set rules, the passwords will be provided
      },

      onLogin: (data) async {
        return null;
      },

      onSignup: _signupUser,
      onRecoverPassword: _recoverPassword,

      messages: LoginMessages(
          userHint: "Kullanıcı Adı",
          passwordHint: "Şifre",
          loginButton: "Giriş Yap",
          forgotPasswordButton: 'Şifreni mi unuttun? Bizimle iletişime geç',
          recoverPasswordDescription:
              "Kullanıcı adını yazarsan, sana bir email yollayacağız",
          recoverPasswordButton: "Kurtar",
          recoverPasswordIntro: "Şifreni tazele",
          flushbarTitleError: "Hata",
          flushbarTitleSuccess: "Tamamdır",
          goBackButton: "Geri",
          recoverPasswordSuccess:
              "Bildirimin tarafımıza ulaştı. En kısa sürede seninle iletişime geçeceğiz"),
      hideForgotPasswordButton: false,
      // hideSignUpButton: false,

      theme: LoginTheme(
        primaryColor: AppColors.white,
        accentColor: AppColors.primary,
        errorColor: AppColors.magenta,
        titleStyle: const TextStyle(
          color: AppColors.primary,
          fontFamily: 'Ubuntu',
          letterSpacing: 4,
        ),
        bodyStyle: const TextStyle(
          fontStyle: FontStyle.normal,
          // decoration: TextDecoration.underline,
        ),
        textFieldStyle: const TextStyle(
          color: AppColors.primary,
          shadows: [Shadow(color: AppColors.primary, blurRadius: 1)],
        ),
        buttonStyle: const TextStyle(
          fontWeight: FontWeight.w800,
          color: AppColors.primary,
        ),
        cardTheme: CardTheme(
          color: AppColors.primary,
          elevation: 5,
          margin: const EdgeInsets.only(top: 15),
          shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.circular(100.0)),
        ),
        inputTheme: InputDecorationTheme(
          filled: true,
          fillColor: AppColors.white,
          focusColor: AppColors.primary,
          prefixIconColor: AppColors.primary,
          contentPadding: EdgeInsets.zero,
          errorStyle: const TextStyle(
            backgroundColor: Colors.orange,
            color: Colors.white,
          ),
          // iconColor: AppColors.primary,
          labelStyle: const TextStyle(fontSize: 12, color: AppColors.primary),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.blue.shade700, width: 4),
            borderRadius: inputBorder,
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.blue.shade400, width: 5),
            borderRadius: inputBorder,
          ),
          errorBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.red.shade700, width: 7),
            borderRadius: inputBorder,
          ),
          focusedErrorBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.red.shade400, width: 8),
            borderRadius: inputBorder,
          ),
          disabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 5),
            borderRadius: inputBorder,
          ),
        ),
        buttonTheme: LoginButtonTheme(
          splashColor: AppColors.primary,
          backgroundColor: AppColors.white,
          highlightColor: Colors.lightGreen,
          elevation: 9.0,
          highlightElevation: 6.0,
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          // shape: CircleBorder(side: BorderSide(color: Colors.green)),
          // shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(55.0)),
        ),
      ),
      onSubmitAnimationCompleted: () {
        Navigator.of(context).pushReplacementNamed(ROUTE_MAIN);
      },
    );
  }
}
