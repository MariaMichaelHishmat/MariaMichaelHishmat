import '/components/quesphoto_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_courses_widget.dart' show AddCoursesWidget;
import 'package:flutter/material.dart';

class AddCoursesModel extends FlutterFlowModel<AddCoursesWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for quesphoto component.
  late QuesphotoModel quesphotoModel;

  @override
  void initState(BuildContext context) {
    quesphotoModel = createModel(context, () => QuesphotoModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    quesphotoModel.dispose();
  }
}
