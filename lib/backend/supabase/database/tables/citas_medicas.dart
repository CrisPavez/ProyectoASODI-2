import '../database.dart';

class CitasMedicasTable extends SupabaseTable<CitasMedicasRow> {
  @override
  String get tableName => 'Citas_medicas';

  @override
  CitasMedicasRow createRow(Map<String, dynamic> data) => CitasMedicasRow(data);
}

class CitasMedicasRow extends SupabaseDataRow {
  CitasMedicasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CitasMedicasTable();

  int get idCitaMedi => getField<int>('id_cita_medi')!;
  set idCitaMedi(int value) => setField<int>('id_cita_medi', value);

  DateTime get fechaHora => getField<DateTime>('fecha_hora')!;
  set fechaHora(DateTime value) => setField<DateTime>('fecha_hora', value);

  String get nombreMedico => getField<String>('nombre_medico')!;
  set nombreMedico(String value) => setField<String>('nombre_medico', value);

  String get motivoConsulta => getField<String>('motivo_consulta')!;
  set motivoConsulta(String value) =>
      setField<String>('motivo_consulta', value);

  String? get idUsuario => getField<String>('id_usuario');
  set idUsuario(String? value) => setField<String>('id_usuario', value);
}
