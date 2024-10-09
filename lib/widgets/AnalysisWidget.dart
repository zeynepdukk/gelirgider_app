import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:styled_divider/styled_divider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'analysis_model.dart';
export 'analysis_model.dart';

class AnalysisWidget extends StatefulWidget {
  const AnalysisWidget({super.key});

  @override
  State<AnalysisWidget> createState() => _AnalysisWidgetState();
}

class _AnalysisWidgetState extends State<AnalysisWidget> {
  late AnalysisModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AnalysisModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();
    final chartPieChartColorsList = [
      Color(0xFF9847FD),
      FlutterFlowTheme.of(context).secondary,
      Color(0xFF4A57C1),
      Color(0xFF3E8DD0),
      Color(0xFF160B52),
      Color(0xFF2C38B4),
      Color(0xFF5C6BF4),
      Color(0xFF8F5CB5),
      Color(0xFFA487ED),
      Color(0xFF6A80C9),
      Color(0xFF606774),
      Color(0xFFBDBDBD)
    ];
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          title: Align(
            alignment: AlignmentDirectional(0, -1),
            child: Text(
              'GelirGider',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                fontFamily: 'Ubuntu',
                color: FlutterFlowTheme.of(context).secondary,
                fontSize: 24,
                letterSpacing: 0.0,
              ),
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 0.5,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 10, 16, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Ayın Özeti',
                        style: FlutterFlowTheme.of(context)
                            .headlineSmall
                            .override(
                          fontFamily: 'Readex Pro',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          fontSize: 19,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, -1),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(8, 10, 0, 0),
                          child: Container(
                            width: 110,
                            decoration: BoxDecoration(
                              color: Color(0x458AC7FF),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  RichText(
                                    textScaler:
                                    MediaQuery.of(context).textScaler,
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '₺',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                            fontFamily: 'Inter',
                                            letterSpacing: 0.0,
                                          ),
                                        ),
                                        TextSpan(
                                          text: ((functions.addAmount(
                                              FFAppState()
                                                  .transaction
                                                  .where((e) =>
                                              e.type ==
                                                  'income')
                                                  .toList())!) -
                                              (functions.addAmount(
                                                  FFAppState()
                                                      .transaction
                                                      .where((e) =>
                                                  e.type ==
                                                      'expense')
                                                      .toList())!))
                                              .toString(),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                            fontFamily: 'Inter',
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                      ],
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                        fontFamily: 'Inter',
                                        letterSpacing: 0.0,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Bakiye',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 10, 0, 0),
                          child: Container(
                            width: 110,
                            decoration: BoxDecoration(
                              color: Color(0x458AC7FF),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  RichText(
                                    textScaler:
                                    MediaQuery.of(context).textScaler,
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '₺',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                            fontFamily: 'Inter',
                                            color: Color(0xFF139660),
                                            letterSpacing: 0.0,
                                          ),
                                        ),
                                        TextSpan(
                                          text: functions
                                              .addAmount(FFAppState()
                                              .transaction
                                              .where(
                                                  (e) => e.type == 'income')
                                              .toList())
                                              .toString(),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                            fontFamily: 'Inter',
                                            color: Color(0xFF139660),
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                      ],
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                        fontFamily: 'Inter',
                                        color: Color(0xFF098754),
                                        letterSpacing: 0.0,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Gelir',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 10, 0, 0),
                          child: Container(
                            width: 110,
                            decoration: BoxDecoration(
                              color: Color(0x458AC7FF),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  RichText(
                                    textScaler:
                                    MediaQuery.of(context).textScaler,
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '₺',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                            fontFamily: 'Inter',
                                            color: Color(0xFFC10A0A),
                                            letterSpacing: 0.0,
                                          ),
                                        ),
                                        TextSpan(
                                          text: functions
                                              .addAmount(FFAppState()
                                              .transaction
                                              .where((e) =>
                                          e.type == 'expense')
                                              .toList())
                                              .toString(),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                            fontFamily: 'Inter',
                                            color: Color(0xFFC10A0A),
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                      ],
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                        fontFamily: 'Inter',
                                        color: Color(0xFFE91A1A),
                                        letterSpacing: 0.0,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Gider',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                StyledDivider(
                  thickness: 1,
                  indent: 16,
                  endIndent: 16,
                  color: FlutterFlowTheme.of(context).secondary,
                  lineStyle: DividerLineStyle.dashed,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: FlutterFlowDropDown<String>(
                          controller: _model.dropDownValueController ??=
                              FormFieldController<String>(
                                _model.dropDownValue ??= 'expense',
                              ),
                          options: List<String>.from(
                              ['expense', 'income', 'Option 3']),
                          optionLabels: [
                            'Expense  Overview',
                            'Income Overview',
                            ''
                          ],
                          onChanged: (val) =>
                              safeSetState(() => _model.dropDownValue = val),
                          width: 200,
                          height: 40,
                          textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                          ),
                          hintText: 'Select...',
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24,
                          ),
                          fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 2,
                          borderColor: FlutterFlowTheme.of(context).secondary,
                          borderWidth: 0,
                          borderRadius: 8,
                          margin: EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
                          hidesUnderline: true,
                          isOverButton: false,
                          isSearchable: false,
                          isMultiSelect: false,
                        ),
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(1, 10, 0, 0),
                    child: Container(
                      width: 370,
                      height: 208,
                      child: Stack(
                        children: [
                          FlutterFlowPieChart(
                            data: FFPieChartData(
                              values: FFAppState()
                                  .transaction
                                  .where((e) => e.type == _model.dropDownValue)
                                  .toList()
                                  .map((e) => e.amount)
                                  .toList(),
                              colors: chartPieChartColorsList,
                              radius: [50],
                            ),
                            donutHoleRadius: 40,
                            donutHoleColor: Colors.transparent,
                            sectionLabelStyle: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-1, -1),
                            child: FlutterFlowChartLegendWidget(
                              entries: functions
                                  .getCategoriesName(
                                  FFAppState()
                                      .transaction
                                      .where((e) =>
                                  e.type == _model.dropDownValue)
                                      .toList(),
                                  FFAppState().categories.toList())!
                                  .asMap()
                                  .entries
                                  .map(
                                    (label) => LegendEntry(
                                  chartPieChartColorsList[label.key %
                                      chartPieChartColorsList.length],
                                  label.value,
                                ),
                              )
                                  .toList(),
                              width: double.infinity,
                              height: double.infinity,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                fontFamily: 'Inter',
                                letterSpacing: 0.0,
                              ),
                              textPadding:
                              EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                              padding:
                              EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                              borderWidth: 1,
                              indicatorSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Container(
                      width: double.infinity,
                      height: 250,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).alternate,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                        child: Builder(
                          builder: (context) {
                            final transaction = FFAppState()
                                .transaction
                                .where((e) => e.type == _model.dropDownValue)
                                .toList();

                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: transaction.length,
                              itemBuilder: (context, transactionIndex) {
                                final transactionItem =
                                transaction[transactionIndex];
                                return Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 5, 10, 5),
                                  child: Container(
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(5),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                            BorderRadius.circular(8),
                                            child: Image.network(
                                              FFAppState()
                                                  .categories
                                                  .where((e) =>
                                              e.id ==
                                                  transactionItem.category)
                                                  .toList()
                                                  .first
                                                  .image,
                                              width: 35,
                                              height: 40,
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 0, 0, 0),
                                              child: Text(
                                                FFAppState()
                                                    .categories
                                                    .where((e) =>
                                                e.id ==
                                                    transactionItem
                                                        .category)
                                                    .toList()
                                                    .first
                                                    .name,
                                                style:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                  fontFamily: 'Inter',
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                  FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0, 0, 10, 0),
                                            child: RichText(
                                              textScaler: MediaQuery.of(context)
                                                  .textScaler,
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: '₺',
                                                    style: FlutterFlowTheme.of(
                                                        context)
                                                        .bodyMedium
                                                        .override(
                                                      fontFamily: 'Inter',
                                                      letterSpacing: 0.0,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: transactionItem.amount
                                                        .toString(),
                                                    style: FlutterFlowTheme.of(
                                                        context)
                                                        .bodyMedium
                                                        .override(
                                                      fontFamily: 'Inter',
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                      FontWeight.bold,
                                                    ),
                                                  )
                                                ],
                                                style:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                  fontFamily: 'Inter',
                                                  letterSpacing: 0.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
