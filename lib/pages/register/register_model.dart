import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'register_widget.dart' show RegisterWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class RegisterModel extends FlutterFlowModel<RegisterWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for nombres widget.
  TextEditingController? nombresController;
  String? Function(BuildContext, String?)? nombresControllerValidator;
  // State field(s) for apaterno widget.
  TextEditingController? apaternoController;
  String? Function(BuildContext, String?)? apaternoControllerValidator;
  // State field(s) for amaterno widget.
  TextEditingController? amaternoController;
  String? Function(BuildContext, String?)? amaternoControllerValidator;
  // State field(s) for rut widget.
  TextEditingController? rutController;
  String? Function(BuildContext, String?)? rutControllerValidator;
  // State field(s) for correo_electronico widget.
  TextEditingController? correoElectronicoController;
  String? Function(BuildContext, String?)? correoElectronicoControllerValidator;
  // State field(s) for contrasena widget.
  TextEditingController? contrasenaController;
  late bool contrasenaVisibility;
  String? Function(BuildContext, String?)? contrasenaControllerValidator;
  // State field(s) for confirmacontrasena widget.
  TextEditingController? confirmacontrasenaController;
  late bool confirmacontrasenaVisibility;
  String? Function(BuildContext, String?)?
      confirmacontrasenaControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    contrasenaVisibility = false;
    confirmacontrasenaVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    nombresController?.dispose();
    apaternoController?.dispose();
    amaternoController?.dispose();
    rutController?.dispose();
    correoElectronicoController?.dispose();
    contrasenaController?.dispose();
    confirmacontrasenaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
