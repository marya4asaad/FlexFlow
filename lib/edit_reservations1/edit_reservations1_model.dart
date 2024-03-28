import '/components/navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'edit_reservations1_widget.dart' show EditReservations1Widget;
import 'package:flutter/material.dart';

class EditReservations1Model extends FlutterFlowModel<EditReservations1Widget> {
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
