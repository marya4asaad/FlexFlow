import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'intro_page_model.dart';
export 'intro_page_model.dart';

class IntroPageWidget extends StatefulWidget {
  const IntroPageWidget({super.key});

  @override
  State<IntroPageWidget> createState() => _IntroPageWidgetState();
}

class _IntroPageWidgetState extends State<IntroPageWidget> {
  late IntroPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IntroPageModel());
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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/WhatsApp_Image_2024-03-24_at_2.02.48_AM.jpeg',
                    width: 300.0,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                    child: RichText(
                      textScaler: MediaQuery.of(context).textScaler,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Welcome to FlexFlow',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          const TextSpan(
                            text:
                                ' - Your Ultimate Fitness Companion that gathers gym classes with helpful information, making the reservation process convenient.',
                            style: TextStyle(),
                          )
                        ],
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                            ),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(50.0, 0.0, 50.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed('Login');
                      },
                      text: 'Login',
                      options: FFButtonOptions(
                        width: 230.0,
                        height: 40.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).tertiary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: 'Readex Pro',
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
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('SignUp');
                      },
                      child: RichText(
                        textScaler: MediaQuery.of(context).textScaler,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Don\'t have an account? ',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                            TextSpan(
                              text: ' Sign up.',
                              style: TextStyle(
                                color: FlutterFlowTheme.of(context).tertiary,
                                fontWeight: FontWeight.w600,
                              ),
                              mouseCursor: SystemMouseCursors.click,
                              recognizer: TapGestureRecognizer()
                                ..onTap = () async {
                                  context.pushNamed('SignUp');
                                },
                            )
                          ],
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                              ),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
