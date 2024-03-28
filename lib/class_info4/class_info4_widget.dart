import '/components/navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'class_info4_model.dart';
export 'class_info4_model.dart';

class ClassInfo4Widget extends StatefulWidget {
  const ClassInfo4Widget({super.key});

  @override
  State<ClassInfo4Widget> createState() => _ClassInfo4WidgetState();
}

class _ClassInfo4WidgetState extends State<ClassInfo4Widget> {
  late ClassInfo4Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ClassInfo4Model());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).tertiary,
          automaticallyImplyLeading: false,
          leading: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              context.pushNamed('HomePage');
            },
            child: Icon(
              Icons.arrow_back,
              color: FlutterFlowTheme.of(context).primaryBackground,
              size: 30.0,
            ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(0.0),
              child: Image.asset(
                'assets/images/Screenshot_2024-03-26_at_9.30.06_PM.png',
                width: 421.0,
                height: 135.0,
                fit: BoxFit.cover,
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(10.0, 20.0, 0.0, 0.0),
                  child: Text(
                    'Description:',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 19.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 0.0, 10.0),
                  child: Text(
                    'In this class, you\'ll experience an innovative blend of strength \ntraining and cardiovascular conditioning. Engaging workouts \ntarget different muscle groups to build strength and endurance.',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 12.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                    child: Text(
                      'instructor:',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 19.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(
                    Icons.person_sharp,
                    color: FlutterFlowTheme.of(context).tertiary,
                    size: 20.0,
                  ),
                  Text(
                    'Melissa',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 15.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: Text(
                      'Location:',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 19.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(
                    Icons.location_on,
                    color: FlutterFlowTheme.of(context).tertiary,
                    size: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 0.0, 0.0),
                    child: Text(
                      'Formè - Al-Nada District',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 15.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 0.0, 0.0),
                  child: Text(
                    ' Level:',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 19.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(
                    Icons.stacked_bar_chart,
                    color: FlutterFlowTheme.of(context).tertiary,
                    size: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                    child: Text(
                      'Intermediate - Advanced',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 15.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                    child: Text(
                      'Capacity',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 19.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                  child: Icon(
                    Icons.people,
                    color: FlutterFlowTheme.of(context).tertiary,
                    size: 20.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                  child: Text(
                    '6 spots',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 15.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 0.0, 0.0),
                  child: Text(
                    'Price:',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 19.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                  child: Icon(
                    Icons.monetization_on,
                    color: FlutterFlowTheme.of(context).tertiary,
                    size: 20.0,
                  ),
                ),
                Text(
                  '375 SR',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 15.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 0.0, 0.0),
                  child: Text(
                    'Cancellation Policy:',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 14.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.warning_rounded,
                    color: FlutterFlowTheme.of(context).tertiary,
                    size: 22.0,
                  ),
                  Text(
                    'Cancellations made less than 24 hours before the\nscheduled class time or for no-shows will result in \nthe class fee being non-refundable.',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 11.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 10.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed('AddResrvation4');
                      },
                      text: 'Book',
                      options: FFButtonOptions(
                        width: 230.0,
                        height: 40.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).tertiary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                        elevation: 3.0,
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(40.0),
                          bottomRight: Radius.circular(40.0),
                          topLeft: Radius.circular(40.0),
                          topRight: Radius.circular(40.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            wrapWithModel(
              model: _model.navigationBarModel,
              updateCallback: () => setState(() {}),
              child: const NavigationBarWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
