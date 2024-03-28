import '/components/navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_resrvation3_widget.dart' show AddResrvation3Widget;
import 'package:flutter/material.dart';

class AddResrvation3Model extends FlutterFlowModel<AddResrvation3Widget> {
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
