import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:styled_divider/styled_divider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        floatingActionButton: Align(
          alignment: AlignmentDirectional(1, 1.06),
          child: FloatingActionButton(
            onPressed: () async {
              context.pushNamed('NewTransaction');
            },
            backgroundColor: FlutterFlowTheme.of(context).secondary,
            elevation: 8,
            child: Icon(
              Icons.add_rounded,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 24,
            ),
          ),
        ),
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
                Flexible(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                          EdgeInsetsDirectional.fromSTEB(16, 10, 16, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Gelirler',
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  fontSize: 19,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                          child: Container(
                            width: double.infinity,
                            height: 220,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).alternate,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                              child: Builder(
                                builder: (context) {
                                  final income = FFAppState()
                                      .transaction
                                      .where((e) => e.type == 'income')
                                      .toList();

                                  return ListView.builder(
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount: income.length,
                                    itemBuilder: (context, incomeIndex) {
                                      final incomeItem = income[incomeIndex];
                                      return Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 0, 10, 10),
                                        child: Container(
                                          width: 100,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                            BorderRadius.circular(8),
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
                                                        incomeItem.category)
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
                                                    padding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        10, 0, 0, 0),
                                                    child: Text(
                                                      FFAppState()
                                                          .categories
                                                          .where((e) =>
                                                      e.id ==
                                                          incomeItem
                                                              .category)
                                                          .toList()
                                                          .first
                                                          .name,
                                                      style: FlutterFlowTheme
                                                          .of(context)
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
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 10, 0),
                                                  child: RichText(
                                                    textScaler:
                                                    MediaQuery.of(context)
                                                        .textScaler,
                                                    text: TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text: '₺',
                                                          style: FlutterFlowTheme
                                                              .of(context)
                                                              .bodyMedium
                                                              .override(
                                                            fontFamily:
                                                            'Inter',
                                                            letterSpacing:
                                                            0.0,
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: incomeItem
                                                              .amount
                                                              .toString(),
                                                          style: FlutterFlowTheme
                                                              .of(context)
                                                              .bodyMedium
                                                              .override(
                                                            fontFamily:
                                                            'Inter',
                                                            letterSpacing:
                                                            0.0,
                                                            fontWeight:
                                                            FontWeight
                                                                .bold,
                                                          ),
                                                        )
                                                      ],
                                                      style: FlutterFlowTheme
                                                          .of(context)
                                                          .bodyMedium
                                                          .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                InkWell(
                                                  splashColor:
                                                  Colors.transparent,
                                                  focusColor:
                                                  Colors.transparent,
                                                  hoverColor:
                                                  Colors.transparent,
                                                  highlightColor:
                                                  Colors.transparent,
                                                  onTap: () async {
                                                    FFAppState()
                                                        .removeFromTransaction(
                                                        incomeItem);
                                                    safeSetState(() {});
                                                  },
                                                  child: Icon(
                                                    Icons.delete,
                                                    color: Color(0xFFC10A0A),
                                                    size: 24,
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
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                          EdgeInsetsDirectional.fromSTEB(16, 10, 16, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Giderler',
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  fontSize: 19,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                          child: Container(
                            width: double.infinity,
                            height: 250,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).alternate,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                              child: Builder(
                                builder: (context) {
                                  final expense = FFAppState()
                                      .transaction
                                      .where((e) => e.type == 'expense')
                                      .toList();

                                  return ListView.builder(
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount: expense.length,
                                    itemBuilder: (context, expenseIndex) {
                                      final expenseItem = expense[expenseIndex];
                                      return Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 5, 10, 5),
                                        child: Container(
                                          width: 100,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                            BorderRadius.circular(8),
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
                                                        expenseItem
                                                            .category)
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
                                                    padding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        10, 0, 0, 0),
                                                    child: Text(
                                                      FFAppState()
                                                          .categories
                                                          .where((e) =>
                                                      e.id ==
                                                          expenseItem
                                                              .category)
                                                          .toList()
                                                          .first
                                                          .name,
                                                      style: FlutterFlowTheme
                                                          .of(context)
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
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 10, 0),
                                                  child: RichText(
                                                    textScaler:
                                                    MediaQuery.of(context)
                                                        .textScaler,
                                                    text: TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text: '₺',
                                                          style: FlutterFlowTheme
                                                              .of(context)
                                                              .bodyMedium
                                                              .override(
                                                            fontFamily:
                                                            'Inter',
                                                            letterSpacing:
                                                            0.0,
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: expenseItem
                                                              .amount
                                                              .toString(),
                                                          style: FlutterFlowTheme
                                                              .of(context)
                                                              .bodyMedium
                                                              .override(
                                                            fontFamily:
                                                            'Inter',
                                                            letterSpacing:
                                                            0.0,
                                                            fontWeight:
                                                            FontWeight
                                                                .bold,
                                                          ),
                                                        )
                                                      ],
                                                      style: FlutterFlowTheme
                                                          .of(context)
                                                          .bodyMedium
                                                          .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                InkWell(
                                                  splashColor:
                                                  Colors.transparent,
                                                  focusColor:
                                                  Colors.transparent,
                                                  hoverColor:
                                                  Colors.transparent,
                                                  highlightColor:
                                                  Colors.transparent,
                                                  onTap: () async {
                                                    FFAppState()
                                                        .removeFromTransaction(
                                                        expenseItem);
                                                    safeSetState(() {});
                                                  },
                                                  child: Icon(
                                                    Icons.delete,
                                                    color: Color(0xFFC10A0A),
                                                    size: 24,
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
                      ],
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
