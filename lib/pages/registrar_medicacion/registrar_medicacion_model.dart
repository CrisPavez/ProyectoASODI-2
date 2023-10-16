import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:async';
import 'registrar_medicacion_widget.dart' show RegistrarMedicacionWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class RegistrarMedicacionModel
    extends FlutterFlowModel<RegistrarMedicacionWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for nombre_medicacion widget.
  TextEditingController? nombreMedicacionController;
  String? Function(BuildContext, String?)? nombreMedicacionControllerValidator;
  // State field(s) for IngresePresentacion widget.
  String? ingresePresentacionValue;
  FormFieldController<String>? ingresePresentacionValueController;
  // State field(s) for IngreseCantidad widget.
  int? ingreseCantidadValue;
  FormFieldController<int>? ingreseCantidadValueController;
  // State field(s) for CountController widget.
  int? countControllerValue;
  // State field(s) for IngresaCuantosDias widget.
  int? ingresaCuantosDiasValue;
  FormFieldController<int>? ingresaCuantosDiasValueController;
  Completer<List<MedicacionRow>>? requestCompleter;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    nombreMedicacionController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
