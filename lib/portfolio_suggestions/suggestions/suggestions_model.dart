import '/flutter_flow/flutter_flow_util.dart';
import '/home_page/nav_bar/nav_bar_widget.dart';
import 'suggestions_widget.dart' show SuggestionsWidget;
import 'package:flutter/material.dart';

class SuggestionsModel extends FlutterFlowModel<SuggestionsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for NavBar component.
  late NavBarModel navBarModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    navBarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
