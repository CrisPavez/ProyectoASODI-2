import '../database.dart';

class SintomasTable extends SupabaseTable<SintomasRow> {
  @override
  String get tableName => 'Sintomas';

  @override
  SintomasRow createRow(Map<String, dynamic> data) => SintomasRow(data);
}

class SintomasRow extends SupabaseDataRow {
  SintomasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SintomasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get tipoSintoma => getField<String>('tipo_sintoma')!;
  set tipoSintoma(String value) => setField<String>('tipo_sintoma', value);

  String? get descripcion => getField<String>('descripcion');
  set descripcion(String? value) => setField<String>('descripcion', value);

  DateTime? get fecha => getField<DateTime>('fecha');
  set fecha(DateTime? value) => setField<DateTime>('fecha', value);

  String? get idUsuario => getField<String>('id_usuario');
  set idUsuario(String? value) => setField<String>('id_usuario', value);
}
