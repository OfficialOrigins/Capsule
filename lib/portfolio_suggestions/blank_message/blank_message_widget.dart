import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'blank_message_model.dart';
export 'blank_message_model.dart';

class BlankMessageWidget extends StatefulWidget {
  const BlankMessageWidget({super.key});

  @override
  _BlankMessageWidgetState createState() => _BlankMessageWidgetState();
}

class _BlankMessageWidgetState extends State<BlankMessageWidget> {
  late BlankMessageModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BlankMessageModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
              child: Container(
                constraints: BoxConstraints(
                  maxWidth: () {
                    if (MediaQuery.sizeOf(context).width >= 1170.0) {
                      return 700.0;
                    } else if (MediaQuery.sizeOf(context).width <= 470.0) {
                      return 330.0;
                    } else {
                      return 530.0;
                    }
                  }(),
                ),
                decoration: BoxDecoration(
                  color: const Color(0x4C6898AB),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 3.0,
                      color: Color(0x33000000),
                      offset: Offset(0.0, 1.0),
                    )
                  ],
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).primary,
                    width: 1.0,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SelectionArea(
                          child: AutoSizeText(
                        'Utilize Capsule AI for asking questions, expanding your portfolio, and discovering new opportunities.\n\nTry out Capsule AI by typing something in the textbox.',
                        style: FlutterFlowTheme.of(context)
                            .titleMedium
                            .override(
                              fontFamily: 'Inter',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 14.0,
                              lineHeight: 1.5,
                            ),
                      )),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
