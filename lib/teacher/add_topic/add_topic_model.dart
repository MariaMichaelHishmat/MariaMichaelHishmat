import '/flutter_flow/flutter_flow_util.dart';
import 'add_topic_widget.dart' show AddTopicWidget;
import 'package:flutter/material.dart';

class AddTopicModel extends FlutterFlowModel<AddTopicWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
