import '/backend/sqlite/sqlite_manager.dart';
import '/components/quesphoto_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'add_courses_widget.dart' show AddCoursesWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
