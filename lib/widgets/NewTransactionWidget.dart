import '/backend/schema/structs/index.dart';
import '/components/category_component_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:styled_divider/styled_divider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'new_transaction_model.dart';
export 'new_transaction_model.dart';

class NewTransactionWidget extends StatefulWidget {
  const NewTransactionWidget({super.key});

  @override
  State<NewTransactionWidget> createState() => _NewTransactionWidgetState();
}

class _NewTransactionWidgetState extends State<NewTransactionWidget> {
  late NewTransactionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewTransactionModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().selectedCategory = 0;
      safeSetState(() {});
    });

    _model.textController ??= TextEditingController(text: '0.00');
    _model.textFieldFocusNode ??= FocusNode();
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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
            child: FlutterFlowIconButton(
              borderRadius: 8,
              buttonSize: 40,
              fillColor: FlutterFlowTheme.of(context).primaryBackground,
              icon: Icon(
                Icons.arrow_back,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 24,
              ),
              onPressed: () async {
                context.safePop();
              },
            ),
          ),
          title: Align(
            alignment: AlignmentDirectional(-0.3, 0),
            child: Text(
              'Yeni İşlem',
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
          elevation: 0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16, 10, 16, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 10, 16, 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              _model.type = 'income';
                              safeSetState(() {});
                            },
                            text: 'Gelir',
                            icon: Icon(
                              Icons.currency_lira,
                              color: FlutterFlowTheme.of(context).success,
                              size: 20,
                            ),
                            options: FFButtonOptions(
                              height: 40,
                              padding:
                              EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                              iconPadding:
                              EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                              color: Color(0x458AC7FF),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                fontFamily: 'Inter',
                                color: FlutterFlowTheme.of(context)
                                    .primaryText,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                              ),
                              elevation: 0,
                              borderSide: BorderSide(
                                color: _model.type == 'income'
                                    ? FlutterFlowTheme.of(context).success
                                    : Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(24),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: FFButtonWidget(
                          onPressed: () async {
                            _model.type = 'expense';
                            safeSetState(() {});
                          },
                          text: 'Gider',
                          icon: Icon(
                            Icons.shopping_cart_outlined,
                            color: _model.type == 'expense'
                                ? FlutterFlowTheme.of(context).error
                                : Color(0x00000000),
                            size: 20,
                          ),
                          options: FFButtonOptions(
                            height: 40,
                            padding:
                            EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                            iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                            color: Color(0x458AC7FF),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                              fontFamily: 'Inter',
                              color:
                              FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                            ),
                            elevation: 0,
                            borderSide: BorderSide(
                              color: _model.type == 'expense'
                                  ? FlutterFlowTheme.of(context).error
                                  : Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(24),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 20),
                  child: Container(
                    width: 200,
                    child: TextFormField(
                      controller: _model.textController,
                      focusNode: _model.textFieldFocusNode,
                      autofocus: false,
                      obscureText: false,
                      decoration: InputDecoration(
                        isDense: true,
                        labelStyle:
                        FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                        ),
                        hintText: 'TextField',
                        hintStyle:
                        FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        focusedErrorBorder: InputBorder.none,
                        filled: true,
                        fillColor:
                        FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        fontSize: 40,
                        letterSpacing: 0.0,
                      ),
                      textAlign: TextAlign.center,
                      keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                      cursorColor: FlutterFlowTheme.of(context).primaryText,
                      validator:
                      _model.textControllerValidator.asValidator(context),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 10, 16, 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                          child: Text(
                            'Kategori',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                              fontFamily: 'Inter',
                              fontSize: 16,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          await showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            enableDrag: false,
                            context: context,
                            builder: (context) {
                              return GestureDetector(
                                onTap: () => FocusScope.of(context).unfocus(),
                                child: Padding(
                                  padding: MediaQuery.viewInsetsOf(context),
                                  child: CategoryComponentWidget(),
                                ),
                              );
                            },
                          ).then((value) => safeSetState(() {}));
                        },
                        child: Container(
                          decoration: BoxDecoration(),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16, 0, 16, 0),
                                    child: Text(
                                      (FFAppState().selectedCategory != null) &&
                                          (FFAppState().selectedCategory !=
                                              0)
                                          ? FFAppState()
                                          .categories
                                          .where((e) =>
                                      e.id ==
                                          FFAppState().selectedCategory)
                                          .toList()
                                          .first
                                          .name
                                          : 'Seç',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                        fontFamily: 'Inter',
                                        fontSize: 16,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                                child: Icon(
                                  Icons.arrow_forward_ios_sharp,
                                  color:
                                  FlutterFlowTheme.of(context).primaryText,
                                  size: 24,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Opacity(
                  opacity: 0.8,
                  child: StyledDivider(
                    thickness: 2,
                    color: FlutterFlowTheme.of(context).alternate,
                    lineStyle: DividerLineStyle.dashed,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 10, 16, 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                          child: Text(
                            'Tarih',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                              fontFamily: 'Inter',
                              fontSize: 16,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          final _datePickedDate = await showDatePicker(
                            context: context,
                            initialDate: getCurrentTimestamp,
                            firstDate: getCurrentTimestamp,
                            lastDate: DateTime(2050),
                            builder: (context, child) {
                              return wrapInMaterialDatePickerTheme(
                                context,
                                child!,
                                headerBackgroundColor:
                                FlutterFlowTheme.of(context).primary,
                                headerForegroundColor:
                                FlutterFlowTheme.of(context).info,
                                headerTextStyle: FlutterFlowTheme.of(context)
                                    .headlineLarge
                                    .override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 32,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                                pickerBackgroundColor:
                                FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                pickerForegroundColor:
                                FlutterFlowTheme.of(context).primaryText,
                                selectedDateTimeBackgroundColor:
                                FlutterFlowTheme.of(context).primary,
                                selectedDateTimeForegroundColor:
                                FlutterFlowTheme.of(context).info,
                                actionButtonForegroundColor:
                                FlutterFlowTheme.of(context).primaryText,
                                iconSize: 24,
                              );
                            },
                          );

                          if (_datePickedDate != null) {
                            safeSetState(() {
                              _model.datePicked = DateTime(
                                _datePickedDate.year,
                                _datePickedDate.month,
                                _datePickedDate.day,
                              );
                            });
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16, 0, 16, 0),
                                    child: Text(
                                      _model.datePicked != null
                                          ? dateTimeFormat(
                                          "d/M/y", _model.datePicked)
                                          : dateTimeFormat(
                                          "d/M/y", getCurrentTimestamp),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                        fontFamily: 'Inter',
                                        fontSize: 16,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                                child: Icon(
                                  Icons.date_range,
                                  color:
                                  FlutterFlowTheme.of(context).primaryText,
                                  size: 24,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Opacity(
                  opacity: 0.8,
                  child: StyledDivider(
                    thickness: 2,
                    color: FlutterFlowTheme.of(context).alternate,
                    lineStyle: DividerLineStyle.dashed,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      FFAppState().addToTransaction(TransactionStruct(
                        type: _model.type,
                        amount: double.tryParse(_model.textController.text),
                        category: FFAppState().selectedCategory,
                        date: _model.datePicked != null
                            ? _model.datePicked
                            : getCurrentTimestamp,
                      ));
                      safeSetState(() {});

                      context.pushNamed('HomePage');
                    },
                    text: 'Kaydet',
                    options: FFButtonOptions(
                      width: 150,
                      height: 40,
                      padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                      iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      color: FlutterFlowTheme.of(context).alternate,
                      textStyle:
                      FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Inter',
                        color: Colors.white,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                      elevation: 0,
                      borderRadius: BorderRadius.circular(8),
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
