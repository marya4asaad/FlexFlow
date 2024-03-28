import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'navigation_bar_model.dart';
export 'navigation_bar_model.dart';

class NavigationBarWidget extends StatefulWidget {
  const NavigationBarWidget({super.key});

  @override
  State<NavigationBarWidget> createState() => _NavigationBarWidgetState();
}

class _NavigationBarWidgetState extends State<NavigationBarWidget> {
  late NavigationBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavigationBarModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            buttonSize: 50.0,
            icon: FaIcon(
              FontAwesomeIcons.home,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 24.0,
            ),
            onPressed: () async {
              context.pushNamed('HomePage');
            },
          ),
          FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            buttonSize: 50.0,
            icon: Icon(
              Icons.event_available,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 24.0,
            ),
            onPressed: () async {
              context.pushNamed('MyReservations');
            },
          ),
          FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            buttonSize: 50.0,
            icon: Icon(
              Icons.account_circle,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 24.0,
            ),
            onPressed: () async {
              context.pushNamed('ProfilePage');
            },
          ),
        ],
      ),
    );
  }
}
