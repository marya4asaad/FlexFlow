import '/components/navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_resrvation4_widget.dart' show AddResrvation4Widget;
import 'package:flutter/material.dart';

class AddResrvation4Model extends FlutterFlowModel<AddResrvation4Widget> {
  ///  State fields for stateful widgets in this page.

  // Model for NavigationBar component.
  late NavigationBarModel navigationBarModel;

  @override
  void initState(BuildContext context) {
    navigationBarModel = createModel(context, () => NavigationBarModel());
  }

  @override
  void dispose() {
    navigationBarModel.dispose();
  }
}
