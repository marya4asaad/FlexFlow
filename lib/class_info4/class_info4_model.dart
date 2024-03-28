import '/components/navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'class_info4_widget.dart' show ClassInfo4Widget;
import 'package:flutter/material.dart';

class ClassInfo4Model extends FlutterFlowModel<ClassInfo4Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for NavigationBar component.
  late NavigationBarModel navigationBarModel;

  @override
  void initState(BuildContext context) {
    navigationBarModel = createModel(context, () => NavigationBarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    navigationBarModel.dispose();
  }
}
