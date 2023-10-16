import '../database.dart';

class PesoTable extends SupabaseTable<PesoRow> {
  @override
  String get tableName => 'Peso';

  @override
  PesoRow createRow(Map<String, dynamic> data) => PesoRow(data);
}

class PesoRow extends SupabaseDataRow {
  PesoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PesoTable();

  int get idRegistro => getField<int>('id_registro')!;
  set idRegistro(int value) => setField<int>('id_registro', value);

  double get peso => getField<double>('peso')!;
  set peso(double value) => setField<double>('peso', value);

  DateTime? get fechaRegistro => getField<DateTime>('fecha_registro');
  set fechaRegistro(DateTime? value) =>
      setField<DateTime>('fecha_registro', value);

  String? get idUsuario => getField<String>('id_usuario');
  set idUsuario(String? value) => setField<String>('id_usuario', value);
}
