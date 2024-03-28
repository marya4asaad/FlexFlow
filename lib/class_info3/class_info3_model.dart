import '/components/navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'class_info3_widget.dart' show ClassInfo3Widget;
import 'package:flutter/material.dart';

class ClassInfo3Model extends FlutterFlowModel<ClassInfo3Widget> {
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
