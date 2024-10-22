import '/backend/sqlite/sqlite_manager.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/teacher/add_courses/add_courses_widget.dart';
import 'addcourse_widget.dart' show AddcourseWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddcourseModel extends FlutterFlowModel<AddcourseWidget> {
  ///  Local state fields for this page.

  DocumentReference? ch;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
