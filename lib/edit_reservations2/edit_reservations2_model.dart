import '/components/navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'edit_reservations2_widget.dart' show EditReservations2Widget;
import 'package:flutter/material.dart';

class EditReservations2Model extends FlutterFlowModel<EditReservations2Widget> {
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
