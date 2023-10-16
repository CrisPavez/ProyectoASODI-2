import '../database.dart';

class PresionTable extends SupabaseTable<PresionRow> {
  @override
  String get tableName => 'Presion';

  @override
  PresionRow createRow(Map<String, dynamic> data) => PresionRow(data);
}

class PresionRow extends SupabaseDataRow {
  PresionRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PresionTable();

  int get idRegistro => getField<int>('id_registro')!;
  set idRegistro(int value) => setField<int>('id_registro', value);

  DateTime get fechaRegistro => getField<DateTime>('fecha_registro')!;
  set fechaRegistro(DateTime value) =>
      setField<DateTime>('fecha_registro', value);

  double get presionSistolica => getField<double>('presion_sistolica')!;
  set presionSistolica(double value) =>
      setField<double>('presion_sistolica', value);

  double get presionDiastolica => getField<double>('presion_diastolica')!;
  set presionDiastolica(double value) =>
      setField<double>('presion_diastolica', value);

  String get idUsuario => getField<String>('id_usuario')!;
  set idUsuario(String value) => setField<String>('id_usuario', value);
}
