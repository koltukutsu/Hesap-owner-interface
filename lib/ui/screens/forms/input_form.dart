import 'package:flutter/material.dart';
import 'package:hesap_owner_interface/data/categoric_datas/add_student_categoric_data.dart';
import 'package:hesap_owner_interface/data/categoric_datas/add_teacher_categoric_data.dart';
import 'package:hesap_owner_interface/ui/screens/forms/components/add_student_form.dart';
import 'package:hesap_owner_interface/ui/screens/forms/components/add_teacher_form.dart';
import 'package:hesap_owner_interface/ui/themes/color_constants.dart';
import 'package:hesap_owner_interface/ui/widgets/atoms/app_button_widget.dart';

class FormMaterial extends StatefulWidget {
  const FormMaterial({Key? key, required this.formType}) : super(key: key);
  final String formType;

  @override
  _FormMaterialState createState() => _FormMaterialState();
}

class _FormMaterialState extends State<FormMaterial> {
  Map<String, String> formCurrentDatasTeacher = {
    for (var teacherData in addTeacherCategoricData) teacherData.specialKey: ""
  };
  Map<String, String> formCurrentDatasStudent = {
    for (var studentData in addStudentCategoricData) studentData.specialKey: ""
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Card(
          color: bgColor,
          elevation: 5,
          margin: const EdgeInsets.fromLTRB(32, 32, 64, 32),
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 16.0),
                child: Column(
                  children: [
                    const Center(
                      child: const Text("Lütfen gerekli alanları doldurun..."),
                    ),
                    widget.formType == "admin"
                        ? AddTeacherForm(
                            formCurrentDatasTeacher: formCurrentDatasTeacher)
                        : AddStudentForm(
                            formCurrentDatasStudent: formCurrentDatasStudent),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Center(
                        child: AppButton(
                            text: "Kişiyi Kaydet",
                            type: ButtonType.PRIMARY,
                            onPressed: () async {
                              if (widget.formType == "admin") {
                                // debugPrint(formCurrentDatasTeacher.toString());
                                if (checkBlankTextFields(context,
                                    formCurrentDatasTeacher, "teacher")) {
                                  // try whether the strings has enough length to provide the substrings
                                  await addTeacherLoginInformationToMap();
                                  print(formCurrentDatasTeacher);
                                } else {}
                              } else {
                                debugPrint(formCurrentDatasStudent.toString());
                                if (checkBlankTextFields(context,
                                    formCurrentDatasStudent, "student")) {
                                  // try whether the strings has enough length to provide the substrings
                                  await addStudentLoginInformationToMap();
                                  print(formCurrentDatasStudent);
                                  _showDialogSuccess(
                                      context, green, "Talebe Eklendi...");
                                } else {}
                              }
                            }),
                      ),
                    )
                  ],
                )),
          ),
        ),
      ),
    );
  }

  _showDialogSuccess(BuildContext context, Color color, String text) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Row(
      children: [
        Icon(
          Icons.verified,
          color: color,
        ),
        const SizedBox(
          width: 25,
        ),
        Text(text),
      ],
    )));
  }

  bool checkBlankTextFields(
      BuildContext context, Map formCurrentDatas, String typeOf) {
    var comparisonCategory;
    if (typeOf == 'student') {
      comparisonCategory = addStudentCategoricData;
    } else {
      comparisonCategory = addTeacherCategoricData;
    }
    List<String> blankTextFields = [];
    for (var key in formCurrentDatas.keys) {
      print(key);
      if (formCurrentDatas[key] == "") {
        for (var comparisonData in comparisonCategory) {
          if (comparisonData.specialKey == key) {
            blankTextFields.add(comparisonData.title);
          }
        }
      }
    }
    if (blankTextFields.length == 0) {
      return true; // no problem
    } else if (blankTextFields.length > 8) {
      final blankTextFieldsShortened = blankTextFields.sublist(0, 8);
      _showDialogSuccess(context, magenta,
          "${blankTextFieldsShortened.join(", ")}... (${blankTextFields.length} tane boş alan), lütfen doldurun!");
      return false; // no problem

    } else {
      _showDialogSuccess(context, magenta,
          "${blankTextFields.join(", ")} boş{${blankTextFields.length} tane boş alan}. Lütfen doldurun!");
      return false; // no problem

    }
  }

  Future<void> addStudentLoginInformationToMap() async {
    try {
      final shortName = formCurrentDatasStudent["name"]!.substring(0, 4);
      final shortSurname = formCurrentDatasStudent["surname"]!.substring(0, 2);
      final shortSchool = formCurrentDatasStudent["school"]!.substring(0, 2);
      final shortHomeTown = formCurrentDatasStudent["hometown"];
      final shortAge = formCurrentDatasStudent["age"];
      var userName =
          '$shortName$shortSurname${shortSchool}_${shortHomeTown}_$shortAge'
              .replaceAll(" ", "");
      final List<String> randomStringPool =
          "${formCurrentDatasStudent['name']}${formCurrentDatasStudent['surname']}${formCurrentDatasStudent['school']}${formCurrentDatasStudent['major']}${formCurrentDatasStudent['dormitory']}${formCurrentDatasStudent['hometown']}"
              .replaceAll(" ", "")
              .split("");
      randomStringPool.shuffle();
      final randomList = randomStringPool.sublist(0, 12);
      var userPassword = randomList.join("");
      formCurrentDatasStudent["userName"] = userName;
      formCurrentDatasStudent["userPassword"] = userPassword;
    } catch (e) {
      print(
          "an error occured during the login info creation section for student: ${e}");
      var userName =
          '${formCurrentDatasStudent["name"]}${formCurrentDatasStudent["surname"]}${formCurrentDatasStudent["school"]}_${formCurrentDatasStudent["hometown"]}_${formCurrentDatasStudent["major"]}'
              .replaceAll(" ", "");
      final List randomPool = userName.split("");
      randomPool.shuffle();
      var userPassword;
      if (randomPool.length < 12) {
        userPassword = randomPool.sublist(0).join("");
      } else {
        userPassword = randomPool.sublist(0, 12).join("");
      }
      formCurrentDatasStudent["userName"] = userName;
      formCurrentDatasStudent["userPassword"] = userPassword;
    }
  }

  Future<void> addTeacherLoginInformationToMap() async {
    try {
      final shortName = formCurrentDatasTeacher["name"]!.substring(0, 4);
      final shortSurname = formCurrentDatasTeacher["surname"]!.substring(0, 2);
      final shortSchool = formCurrentDatasTeacher["school"]!.substring(0, 2);
      final shortHomeTown = formCurrentDatasTeacher["hometown"];
      final shortAge = formCurrentDatasTeacher["age"];
      var userName =
          '$shortName$shortSurname${shortSchool}_${shortHomeTown}_$shortAge'
              .replaceAll(" ", "");
      final List<String> randomStringPool =
          "${formCurrentDatasTeacher['name']}${formCurrentDatasTeacher['surname']}${formCurrentDatasTeacher['school']}${formCurrentDatasTeacher['major']}${formCurrentDatasTeacher['dormitory']}${formCurrentDatasTeacher['hometown']}"
              .replaceAll(" ", "")
              .split("");
      randomStringPool.shuffle();
      final randomList = randomStringPool.sublist(0, 12);
      var userPassword = randomList.join("");
      formCurrentDatasTeacher["userName"] = userName;
      formCurrentDatasTeacher["userPassword"] = userPassword;
    } catch (e) {
      print(
          "an error occured during the login info creation section for teacher: ${e}");
      var userName =
          '${formCurrentDatasTeacher["name"]}${formCurrentDatasTeacher["surname"]}${formCurrentDatasTeacher["school"]}_${formCurrentDatasTeacher["hometown"]}_${formCurrentDatasTeacher["major"]}';
      final List randomPool = userName.split("");
      randomPool.shuffle();
      var userPassword;
      if (randomPool.length < 12) {
        userPassword = randomPool.sublist(0).join("");
      } else {
        userPassword = randomPool.sublist(0, 12).join("");
      }
      formCurrentDatasTeacher["userName"] = userName;
      formCurrentDatasTeacher["userPassword"] = userPassword;
    }
  }
}
