import '../database.dart';

class GlucemiaTable extends SupabaseTable<GlucemiaRow> {
  @override
  String get tableName => 'Glucemia';

  @override
  GlucemiaRow createRow(Map<String, dynamic> data) => GlucemiaRow(data);
}

class GlucemiaRow extends SupabaseDataRow {
  GlucemiaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => GlucemiaTable();

  int get idRegistro => getField<int>('id_registro')!;
  set idRegistro(int value) => setField<int>('id_registro', value);

  double get glucemia => getField<double>('glucemia')!;
  set glucemia(double value) => setField<double>('glucemia', value);

  DateTime get fecha => getField<DateTime>('fecha')!;
  set fecha(DateTime value) => setField<DateTime>('fecha', value);

  String get idUsuario => getField<String>('id_usuario')!;
  set idUsuario(String value) => setField<String>('id_usuario', value);
}
