import '/auth/supabase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'restablecer_contrasena_widget.dart' show RestablecerContrasenaWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RestablecerContrasenaModel
    extends FlutterFlowModel<RestablecerContrasenaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Correo widget.
  TextEditingController? correoController;
  String? Function(BuildContext, String?)? correoControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    correoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
