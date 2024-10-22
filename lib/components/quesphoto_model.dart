import '/flutter_flow/flutter_flow_util.dart';
import 'quesphoto_widget.dart' show QuesphotoWidget;
import 'package:flutter/material.dart';

class QuesphotoModel extends FlutterFlowModel<QuesphotoWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
