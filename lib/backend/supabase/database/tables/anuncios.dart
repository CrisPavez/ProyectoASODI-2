import '../database.dart';

class AnunciosTable extends SupabaseTable<AnunciosRow> {
  @override
  String get tableName => 'Anuncios';

  @override
  AnunciosRow createRow(Map<String, dynamic> data) => AnunciosRow(data);
}

class AnunciosRow extends SupabaseDataRow {
  AnunciosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AnunciosTable();

  int get idAnuncio => getField<int>('id_anuncio')!;
  set idAnuncio(int value) => setField<int>('id_anuncio', value);

  DateTime get fechaCreacion => getField<DateTime>('fecha_creación')!;
  set fechaCreacion(DateTime value) =>
      setField<DateTime>('fecha_creación', value);

  String? get titulo => getField<String>('titulo');
  set titulo(String? value) => setField<String>('titulo', value);

  String? get descripcion => getField<String>('descripción');
  set descripcion(String? value) => setField<String>('descripción', value);

  String? get idCreador => getField<String>('id_creador');
  set idCreador(String? value) => setField<String>('id_creador', value);
}
