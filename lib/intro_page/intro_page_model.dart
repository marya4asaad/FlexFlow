import '/flutter_flow/flutter_flow_util.dart';
import 'intro_page_widget.dart' show IntroPageWidget;
import 'package:flutter/material.dart';

class IntroPageModel extends FlutterFlowModel<IntroPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
