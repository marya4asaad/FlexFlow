import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'sign_up_widget.dart' show SignUpWidget;
import 'package:flutter/material.dart';

class SignUpModel extends FlutterFlowModel<SignUpWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for emailAddress_Create widget.
  FocusNode? emailAddressCreateFocusNode1;
  TextEditingController? emailAddressCreateController1;
  String? Function(BuildContext, String?)?
      emailAddressCreateController1Validator;
  // State field(s) for emailAddress_Create widget.
  FocusNode? emailAddressCreateFocusNode2;
  TextEditingController? emailAddressCreateController2;
  String? Function(BuildContext, String?)?
      emailAddressCreateController2Validator;
  // State field(s) for emailAddress_Create widget.
  FocusNode? emailAddressCreateFocusNode3;
  TextEditingController? emailAddressCreateController3;
  String? Function(BuildContext, String?)?
      emailAddressCreateController3Validator;
  // State field(s) for password_Create widget.
  FocusNode? passwordCreateFocusNode;
  TextEditingController? passwordCreateController;
  late bool passwordCreateVisibility;
  String? Function(BuildContext, String?)? passwordCreateControllerValidator;
  // State field(s) for CheckboxGroup widget.
  List<String>? checkboxGroupValues;
  FormFieldController<List<String>>? checkboxGroupValueController;

  @override
  void initState(BuildContext context) {
    passwordCreateVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    emailAddressCreateFocusNode1?.dispose();
    emailAddressCreateController1?.dispose();

    emailAddressCreateFocusNode2?.dispose();
    emailAddressCreateController2?.dispose();

    emailAddressCreateFocusNode3?.dispose();
    emailAddressCreateController3?.dispose();

    passwordCreateFocusNode?.dispose();
    passwordCreateController?.dispose();
  }
}
