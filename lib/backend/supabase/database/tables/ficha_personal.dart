import '../database.dart';

class FichaPersonalTable extends SupabaseTable<FichaPersonalRow> {
  @override
  String get tableName => 'Ficha_Personal';

  @override
  FichaPersonalRow createRow(Map<String, dynamic> data) =>
      FichaPersonalRow(data);
}

class FichaPersonalRow extends SupabaseDataRow {
  FichaPersonalRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FichaPersonalTable();

  String get idUsuario => getField<String>('id_usuario')!;
  set idUsuario(String value) => setField<String>('id_usuario', value);

  DateTime? get fechaNacimiento => getField<DateTime>('fecha_nacimiento');
  set fechaNacimiento(DateTime? value) =>
      setField<DateTime>('fecha_nacimiento', value);

  int? get edad => getField<int>('edad');
  set edad(int? value) => setField<int>('edad', value);

  double? get estatura => getField<double>('estatura');
  set estatura(double? value) => setField<double>('estatura', value);

  String? get sexo => getField<String>('sexo');
  set sexo(String? value) => setField<String>('sexo', value);

  String? get hospitalPerteneciente =>
      getField<String>('hospital_perteneciente');
  set hospitalPerteneciente(String? value) =>
      setField<String>('hospital_perteneciente', value);

  bool? get diabetes => getField<bool>('diabetes');
  set diabetes(bool? value) => setField<bool>('diabetes', value);

  bool? get hipertension => getField<bool>('hipertension');
  set hipertension(bool? value) => setField<bool>('hipertension', value);

  bool? get enfermedadCorazon => getField<bool>('enfermedad_corazon');
  set enfermedadCorazon(bool? value) =>
      setField<bool>('enfermedad_corazon', value);

  bool? get accidenteVascular => getField<bool>('accidente_vascular');
  set accidenteVascular(bool? value) =>
      setField<bool>('accidente_vascular', value);

  bool? get trombosis => getField<bool>('trombosis');
  set trombosis(bool? value) => setField<bool>('trombosis', value);

  bool? get epilepsia => getField<bool>('epilepsia');
  set epilepsia(bool? value) => setField<bool>('epilepsia', value);

  String? get alergias => getField<String>('alergias');
  set alergias(String? value) => setField<String>('alergias', value);

  int? get numeroContacto => getField<int>('numero_contacto');
  set numeroContacto(int? value) => setField<int>('numero_contacto', value);
}
