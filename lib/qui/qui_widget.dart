import '/backend/backend.dart';
import '/components/ques_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/instant_timer.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'qui_model.dart';
export 'qui_model.dart';

class QuiWidget extends StatefulWidget {
  /// page to display each question and its 4 answers with 4 check boxes to
  /// enable the user to choose the right answer
  const QuiWidget({
    super.key,
    required this.tt,
    required this.qq,
  });

  final DocumentReference? tt;
  final DocumentReference? qq;

  @override
  State<QuiWidget> createState() => _QuiWidgetState();
}

class _QuiWidgetState extends State<QuiWidget> {
  late QuiModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QuiModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.instantTimer = InstantTimer.periodic(
        duration: const Duration(milliseconds: 1),
        callback: (timer) async {
          _model.timerController.onStartTimer();
        },
        startImmediately: true,
      );
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).info,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              StreamBuilder<QuizsetRecord>(
                stream: QuizsetRecord.getDocument(widget.qq!),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50.0,
                        height: 50.0,
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                            FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                      ),
                    );
                  }

                  final columnQuizsetRecord = snapshot.data!;

                  return SingleChildScrollView(
                    primary: false,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        StreamBuilder<TopicsRecord>(
                          stream: TopicsRecord.getDocument(widget.tt!),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                ),
                              );
                            }

                            final columnTopicsRecord = snapshot.data!;

                            return SingleChildScrollView(
                              primary: false,
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 24.0),
                                          child:
                                              FutureBuilder<List<QuizRecord>>(
                                            future: queryQuizRecordOnce(
                                              queryBuilder: (quizRecord) =>
                                                  quizRecord.where(
                                                'quizset_Ref',
                                                isEqualTo: widget.qq,
                                              ),
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<QuizRecord>
                                                  listViewQuizRecordList =
                                                  snapshot.data!;

                                              return ListView.builder(
                                                padding: EdgeInsets.zero,
                                                primary: false,
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                itemCount:
                                                    listViewQuizRecordList
                                                        .length,
                                                itemBuilder:
                                                    (context, listViewIndex) {
                                                  final listViewQuizRecord =
                                                      listViewQuizRecordList[
                                                          listViewIndex];
                                                  return Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 24.0,
                                                                0.0, 0.0),
                                                    child: QuesWidget(
                                                      key: Key(
                                                          'Key5qp_${listViewIndex}_of_${listViewQuizRecordList.length}'),
                                                      qn: listViewQuizRecord
                                                          .question,
                                                      opt1: listViewQuizRecord
                                                          .opt1,
                                                      opt2: listViewQuizRecord
                                                          .opt2,
                                                      opt3: listViewQuizRecord
                                                          .opt3,
                                                      opt4: listViewQuizRecord
                                                          .opt4,
                                                      b1: listViewQuizRecord
                                                          .opt1B,
                                                      b2: listViewQuizRecord
                                                          .opt2B,
                                                      b3: listViewQuizRecord
                                                          .opt3B,
                                                      b4: listViewQuizRecord
                                                          .opt4B,
                                                      quiz: listViewQuizRecord,
                                                      img: listViewQuizRecord
                                                          .img,
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                        ),
                                        FFButtonWidget(
                                          onPressed: () async {
                                            context.pushNamed(
                                              'ScorePage',
                                              queryParameters: {
                                                'totalQuestions':
                                                    serializeParam(
                                                  columnQuizsetRecord
                                                      .totalQuestions,
                                                  ParamType.int,
                                                ),
                                                'qq': serializeParam(
                                                  widget.qq,
                                                  ParamType.DocumentReference,
                                                ),
                                                'ch': serializeParam(
                                                  columnTopicsRecord.chapterRef,
                                                  ParamType.DocumentReference,
                                                ),
                                              }.withoutNulls,
                                            );

                                            FFAppState().toopicName =
                                                columnTopicsRecord.name;
                                            safeSetState(() {});
                                            FFAppState().completed =
                                                columnQuizsetRecord
                                                    .totalQuestions;
                                            safeSetState(() {});
                                            FFAppState().quizName =
                                                columnQuizsetRecord.quizName;
                                            safeSetState(() {});
                                          },
                                          text: 'Submit Quiz',
                                          options: FFButtonOptions(
                                            width: double.infinity,
                                            height: 40.0,
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 0.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Inter',
                                                      color: Colors.white,
                                                      letterSpacing: 0.0,
                                                    ),
                                            elevation: 0.0,
                                            borderRadius:
                                                BorderRadius.circular(22.0),
                                          ),
                                        ),
                                      ].divide(const SizedBox(height: 20.0)),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ]
                          .divide(const SizedBox(height: 50.0))
                          .around(const SizedBox(height: 50.0)),
                    ),
                  );
                },
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, -0.99),
                child: SingleChildScrollView(
                  primary: false,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 12.0, 24.0),
                            child: StreamBuilder<List<QuizsetRecord>>(
                              stream: queryQuizsetRecord(
                                queryBuilder: (quizsetRecord) =>
                                    quizsetRecord.where(
                                  'topic_ref',
                                  isEqualTo: widget.tt,
                                ),
                                singleRecord: true,
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 50.0,
                                      child: CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                List<QuizsetRecord> containerQuizsetRecordList =
                                    snapshot.data!;
                                final containerQuizsetRecord =
                                    containerQuizsetRecordList.isNotEmpty
                                        ? containerQuizsetRecordList.first
                                        : null;

                                return Material(
                                  color: Colors.transparent,
                                  elevation: 5.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.9,
                                    height: 60.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(30.0),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 3.0,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 10.0),
                                      child: StreamBuilder<TopicsRecord>(
                                        stream: TopicsRecord.getDocument(
                                            widget.tt!),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50.0,
                                                height: 50.0,
                                                child:
                                                    CircularProgressIndicator(
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }

                                          final rowTopicsRecord =
                                              snapshot.data!;

                                          return Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 0.0, 0.0),
                                                child: Icon(
                                                  Icons.timer,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 24.0,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 12.0, 0.0),
                                                child: FlutterFlowTimer(
                                                  initialTime:
                                                      containerQuizsetRecord!
                                                              .duration *
                                                          60000,
                                                  getDisplayTime: (value) =>
                                                      StopWatchTimer
                                                          .getDisplayTime(
                                                    value,
                                                    hours: false,
                                                    milliSecond: false,
                                                  ),
                                                  controller:
                                                      _model.timerController,
                                                  updateStateInterval: const Duration(
                                                      milliseconds: 1000),
                                                  onChanged: (value,
                                                      displayTime,
                                                      shouldUpdate) {
                                                    _model.timerMilliseconds =
                                                        value;
                                                    _model.timerValue =
                                                        displayTime;
                                                    if (shouldUpdate) {
                                                      safeSetState(() {});
                                                    }
                                                  },
                                                  onEnded: () async {
                                                    context.pushNamed(
                                                      'ScorePage',
                                                      queryParameters: {
                                                        'totalQuestions':
                                                            serializeParam(
                                                          containerQuizsetRecord
                                                              .totalQuestions,
                                                          ParamType.int,
                                                        ),
                                                        'qq': serializeParam(
                                                          widget.qq,
                                                          ParamType
                                                              .DocumentReference,
                                                        ),
                                                        'ch': serializeParam(
                                                          rowTopicsRecord
                                                              .chapterRef,
                                                          ParamType
                                                              .DocumentReference,
                                                        ),
                                                      }.withoutNulls,
                                                    );
                                                  },
                                                  textAlign: TextAlign.start,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .headlineSmall
                                                      .override(
                                                        fontFamily: 'Sora',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
