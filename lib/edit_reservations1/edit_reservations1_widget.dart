import '/components/navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'edit_reservations1_model.dart';
export 'edit_reservations1_model.dart';

class EditReservations1Widget extends StatefulWidget {
  const EditReservations1Widget({super.key});

  @override
  State<EditReservations1Widget> createState() =>
      _EditReservations1WidgetState();
}

class _EditReservations1WidgetState extends State<EditReservations1Widget> {
  late EditReservations1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditReservations1Model());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).tertiary,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30.0,
          borderWidth: 1.0,
          buttonSize: 60.0,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: FlutterFlowTheme.of(context).secondaryBackground,
            size: 30.0,
          ),
          onPressed: () async {
            context.pushNamed(
              'MyReservations',
              extra: <String, dynamic>{
                kTransitionInfoKey: const TransitionInfo(
                  hasTransition: true,
                  transitionType: PageTransitionType.leftToRight,
                  duration: Duration(milliseconds: 250),
                ),
              },
            );
          },
        ),
        title: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 0.0),
          child: Text(
            'Edit Reservation',
            style: FlutterFlowTheme.of(context).titleMedium.override(
                  fontFamily: 'Readex Pro',
                  fontSize: 24.0,
                  letterSpacing: 0.0,
                ),
          ),
        ),
        actions: const [],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
              child: Container(
                width: MediaQuery.sizeOf(context).width * 0.9,
                height: 140.0,
                decoration: BoxDecoration(
                  color: const Color(0xFFDBE2E7),
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/WhatsApp_Image_2024-03-28_at_02.31.07.jpeg',
                    width: 300.0,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 4.0, 24.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Class Name',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0.0,
                        ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 4.0, 16.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Yoga Flow',
                    style: FlutterFlowTheme.of(context).displaySmall.override(
                          fontFamily: 'Outfit',
                          letterSpacing: 0.0,
                        ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Trainer',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0.0,
                        ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 8.0, 24.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Text(
                      'Sara B.',
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                fontFamily: 'Outfit',
                                letterSpacing: 0.0,
                              ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Time',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0.0,
                        ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 8.0, 24.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Text(
                      'Monday, 6:00PM - 7:00PM',
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                fontFamily: 'Outfit',
                                letterSpacing: 0.0,
                              ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 10.0),
              child: Container(
                width: 346.0,
                height: 193.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 4.0,
                      color: Color(0x33000000),
                      offset: Offset(
                        0.0,
                        2.0,
                      ),
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                        child: Text(
                          'Change class to another time? (Wednesday 6:00PM)',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                fontFamily: 'Outfit',
                                fontSize: 20.0,
                                letterSpacing: 0.0,
                              ),
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () {
                          print('EditButton pressed ...');
                        },
                        text: 'Yes, Change time',
                        options: FFButtonOptions(
                          width: 230.0,
                          height: 40.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).tertiary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Lexend Deca',
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                          elevation: 3.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed('MyReservations');
                          },
                          text: 'Go Back',
                          options: FFButtonOptions(
                            width: 230.0,
                            height: 40.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).tertiary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Lexend Deca',
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                            elevation: 3.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: 352.0,
              height: 60.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(50.0, 5.0, 50.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        var confirmDialogResponse = await showDialog<bool>(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  title: const Text('Are You Sure?'),
                                  content: const Text(
                                      'You Are About To Delete This Account.'),
                                  actions: [
                                    TextButton(
                                      onPressed: () => Navigator.pop(
                                          alertDialogContext, false),
                                      child: const Text('Cancel'),
                                    ),
                                    TextButton(
                                      onPressed: () => Navigator.pop(
                                          alertDialogContext, true),
                                      child: const Text('Confirm'),
                                    ),
                                  ],
                                );
                              },
                            ) ??
                            false;
                      },
                      text: 'Delete Reservation',
                      options: FFButtonOptions(
                        width: 230.0,
                        height: 40.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: const Color(0xFFD40A0A),
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
