import '/flutter_flow/flutter_flow_util.dart';
import 'post_image_widget.dart' show PostImageWidget;
import 'package:flutter/material.dart';

class PostImageModel extends FlutterFlowModel<PostImageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
