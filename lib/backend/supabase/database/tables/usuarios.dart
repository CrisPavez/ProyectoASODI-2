import '../database.dart';

class UsuariosTable extends SupabaseTable<UsuariosRow> {
  @override
  String get tableName => 'Usuarios';

  @override
  UsuariosRow createRow(Map<String, dynamic> data) => UsuariosRow(data);
}

class UsuariosRow extends SupabaseDataRow {
  UsuariosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsuariosTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get nombres => getField<String>('nombres')!;
  set nombres(String value) => setField<String>('nombres', value);

  String get apellidoPaterno => getField<String>('apellido_paterno')!;
  set apellidoPaterno(String value) =>
      setField<String>('apellido_paterno', value);

  String get apellidoMaterno => getField<String>('apellido_materno')!;
  set apellidoMaterno(String value) =>
      setField<String>('apellido_materno', value);

  String get rut => getField<String>('rut')!;
  set rut(String value) => setField<String>('rut', value);

  String? get rol => getField<String>('rol');
  set rol(String? value) => setField<String>('rol', value);
}
