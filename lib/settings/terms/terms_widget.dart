import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'terms_model.dart';
export 'terms_model.dart';

class TermsWidget extends StatefulWidget {
  const TermsWidget({super.key});

  @override
  _TermsWidgetState createState() => _TermsWidgetState();
}

class _TermsWidgetState extends State<TermsWidget> {
  late TermsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermsModel());
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
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(56.0),
          child: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primary,
            automaticallyImplyLeading: false,
            leading: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              borderWidth: 1.0,
              buttonSize: 60.0,
              icon: const Icon(
                Icons.arrow_back_rounded,
                color: Colors.white,
                size: 30.0,
              ),
              onPressed: () async {
                context.pushNamed('Settings');
              },
            ),
            actions: const [],
            flexibleSpace: FlexibleSpaceBar(
              title: Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Text(
                  'Terms and Conditions',
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'Readex Pro',
                        color: Colors.white,
                        fontSize: 22.0,
                      ),
                ),
              ),
              centerTitle: true,
              expandedTitleScale: 1.0,
            ),
            elevation: 2.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 15.0),
                  child: Text(
                    'Terms and Conditions ',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 30.0,
                        ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 22.0),
                child: Text(
                  'We are Capsule ("Company," "we," "us," "our").\nWe operate the mobile application Capsule (the "App"), as well as any other related products and services that refer or link to these\nlegal terms (the "Legal Terms") (collectively, the "Services").\nCapsule is an app that allows high school students to demonstrate their academic achievements, athletic participation, performing\narts experience, clubs and organization memberships, community service hours, honors classes, and other related items.\nYou can contact us by phone at 2054920466, email at aravhalade@gmail.com, or by mail to\nThese Legal Terms constitute a legally binding agreement made between you, whether personally or on behalf of an entity ("you"),\nand Capsule, concerning your access to and use of the Services. You agree that by accessing the Services, you have read,\nunderstood, and agreed to be bound by all of these Legal Terms. IF YOU DO NOT AGREE WITH ALL OF THESE LEGAL TERMS,\nTHEN YOU ARE EXPRESSLY PROHIBITED FROM USING THE SERVICES AND YOU MUST DISCONTINUE USE IMMEDIATELY\nSupplemental terms and conditions or documents that may be posted on the Services from time to time are hereby expressly\nincorporated herein by reference. We reserve the right, in our sole discretion, to make changes or modifications to these Legal Terms\nat any time and for any reason. We will alert you about any changes by updating the "Last updated" date of these Legal Terms, and\nyou waive any right to receive specific notice of each such change. It is your responsibility to periodically review these Legal Terms to\nstay informed of updates. You will be subject to, and will be deemed to have been made aware of and to have accepted, the changes\nin any revised Legal Terms by your continued use of the Services after the date such revised Legal Terms are posted.\nAll users who are minors in the jurisdiction in which they reside (generally under the age of 18) must have the permission of, and be\ndirectly supervised by, their parent or guardian to use the Services. If you are a minor, you must have your parent or guardian read\nand agree to these Legal Terms prior to you using the Services.\nWe recommend that you print a copy of these Legal Terms for your records.',
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).bodyMedium,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
