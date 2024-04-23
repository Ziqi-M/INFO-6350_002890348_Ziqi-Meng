import '/flutter_flow/flutter_flow_util.dart';
import 'browse_post_widget.dart' show BrowsePostWidget;
import 'package:flutter/material.dart';

class BrowsePostModel extends FlutterFlowModel<BrowsePostWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
