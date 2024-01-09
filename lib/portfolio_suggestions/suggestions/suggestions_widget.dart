import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/home_page/nav_bar/nav_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'suggestions_model.dart';
export 'suggestions_model.dart';

class SuggestionsWidget extends StatefulWidget {
  const SuggestionsWidget({super.key});

  @override
  _SuggestionsWidgetState createState() => _SuggestionsWidgetState();
}

class _SuggestionsWidgetState extends State<SuggestionsWidget> {
  late SuggestionsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SuggestionsModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          title: GradientText(
            'PathFinder',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Readex Pro',
                  fontSize: 28.0,
                ),
            colors: [
              FlutterFlowTheme.of(context).primary,
              FlutterFlowTheme.of(context).secondary
            ],
            gradientDirection: GradientDirection.ltr,
            gradientType: GradientType.linear,
          ),
          actions: const [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            15.0, 15.0, 0.0, 5.0),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 8.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Container(
                            width: 360.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [Color(0xFF95F9C3), Color(0xFF0B3866)],
                                stops: [0.0, 0.6],
                                begin: AlignmentDirectional(1.0, 0.0),
                                end: AlignmentDirectional(-1.0, 0),
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 3.0, 0.0, 0.0),
                                  child: Text(
                                    'Computer Science ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          fontSize: 21.0,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.16, -0.9),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 0.0, 0.0),
                                    child: Icon(
                                      Icons.code_sharp,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, -0.5),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        5.0, 25.0, 0.0, 0.0),
                                    child: Text(
                                      'Computer science is about understanding and creating the technology behind computers. It involves coding, software development, and problem-solving using algorithms, covering a range of areas like programming and artificial intelligence.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            fontSize: 11.5,
                                          ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(1.0, -0.9),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 10.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed('compSci');
                                      },
                                      child: Icon(
                                        Icons.arrow_forward,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        size: 22.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 5.0),
                    child: Material(
                      color: Colors.transparent,
                      elevation: 8.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Container(
                        width: 360.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [Color(0xFFFF5858), Color(0xFFFFC8C8)],
                            stops: [0.0, 1.0],
                            begin: AlignmentDirectional(1.0, 0.0),
                            end: AlignmentDirectional(-1.0, 0),
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10.0, 3.0, 0.0, 0.0),
                              child: Text(
                                'Medical Field',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      fontSize: 21.0,
                                    ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(-0.16, -0.9),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 0.0, 5.0),
                                child: Icon(
                                  Icons.medical_services_sharp,
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  size: 21.0,
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(-1.0, -0.5),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    5.0, 25.0, 0.0, 0.0),
                                child: Text(
                                  'The medical field focuses on understanding, treating, and preventing human illnesses and injuries. It includes various disciplines like medicine, surgery, nursing, pharmacy, and public health, working together to enhance patient care and well-being through ongoing advancements in technology and research.',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        fontSize: 11.5,
                                      ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(1.0, -0.9),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 10.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('Medical');
                                  },
                                  child: Icon(
                                    Icons.arrow_forward,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    size: 22.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: Material(
                      color: Colors.transparent,
                      elevation: 8.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Container(
                        width: 360.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [Color(0xFF432371), Color(0xFFFAAE7B)],
                            stops: [0.0, 1.0],
                            begin: AlignmentDirectional(1.0, 0.0),
                            end: AlignmentDirectional(-1.0, 0),
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10.0, 3.0, 0.0, 0.0),
                              child: Text(
                                'Professional Business',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      fontSize: 21.0,
                                    ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.36, -0.92),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 0.0, 0.0),
                                child: Icon(
                                  Icons.business_center_sharp,
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  size: 22.0,
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(-1.0, -0.5),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    5.0, 25.0, 5.0, 0.0),
                                child: Text(
                                  'Business focuses on principles for creating, managing, and running organizations. It includes finance, marketing, management, and entrepreneurship. Professionals aim to achieve goals, improve efficiency, and navigate dynamic economic changes.',
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        fontSize: 11.5,
                                      ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(1.0, -0.9),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 10.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('Business');
                                  },
                                  child: Icon(
                                    Icons.arrow_forward,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    size: 22.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 0.0, 5.0),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 8.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Container(
                          width: 360.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [Color(0xFFF5C900), Color(0xFF212F7A)],
                              stops: [0.0, 0.7],
                              begin: AlignmentDirectional(1.0, 0.0),
                              end: AlignmentDirectional(-1.0, 0),
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 3.0, 0.0, 0.0),
                                child: Text(
                                  'Capsule AI',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        fontSize: 21.0,
                                      ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(-0.32, -0.9),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 0.0, 0.0),
                                  child: Icon(
                                    Icons.auto_awesome,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    size: 22.0,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(-1.0, -0.5),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      5.0, 25.0, 0.0, 0.0),
                                  child: Text(
                                    'Introducing Capsule AI, your high school guide. Using advanced artificial intelligence algorithms, it helps students navigate uncertainties and confidently stride towards a successful college future.',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          fontSize: 11.5,
                                        ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(1.0, -0.9),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 10.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed('GPTSuggestions');
                                    },
                                    child: Icon(
                                      Icons.arrow_forward,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      size: 22.0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 1.02),
                child: wrapWithModel(
                  model: _model.navBarModel,
                  updateCallback: () => setState(() {}),
                  child: const NavBarWidget(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
