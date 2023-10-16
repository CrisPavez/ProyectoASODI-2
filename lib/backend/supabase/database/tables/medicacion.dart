import '../database.dart';

class MedicacionTable extends SupabaseTable<MedicacionRow> {
  @override
  String get tableName => 'Medicacion';

  @override
  MedicacionRow createRow(Map<String, dynamic> data) => MedicacionRow(data);
}

class MedicacionRow extends SupabaseDataRow {
  MedicacionRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MedicacionTable();

  int get idMedicacion => getField<int>('id_medicacion')!;
  set idMedicacion(int value) => setField<int>('id_medicacion', value);

  String get nombreMedicamento => getField<String>('nombre_medicamento')!;
  set nombreMedicamento(String value) =>
      setField<String>('nombre_medicamento', value);

  int get cantidad => getField<int>('cantidad')!;
  set cantidad(int value) => setField<int>('cantidad', value);

  String get tipoMedicamiento => getField<String>('tipo_medicamiento')!;
  set tipoMedicamiento(String value) =>
      setField<String>('tipo_medicamiento', value);

  int get frecuenciaHora => getField<int>('frecuencia_hora')!;
  set frecuenciaHora(int value) => setField<int>('frecuencia_hora', value);

  String get idUsuario => getField<String>('id_usuario')!;
  set idUsuario(String value) => setField<String>('id_usuario', value);

  int get duracionDiasMedica => getField<int>('duracion_dias_medica')!;
  set duracionDiasMedica(int value) =>
      setField<int>('duracion_dias_medica', value);
}
