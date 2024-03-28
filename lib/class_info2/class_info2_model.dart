import '/components/navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'class_info2_widget.dart' show ClassInfo2Widget;
import 'package:flutter/material.dart';

class ClassInfo2Model extends FlutterFlowModel<ClassInfo2Widget> {
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
