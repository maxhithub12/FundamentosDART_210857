void main() {
  // Caso 1: Nuevo miembro registrado el día de hoy
  print('--- Caso 1: Registro de un nuevo miembro con fecha del sistema---');
  final miembro1 = Miembro.registrarMiembro(
    1,
    1001,
    501,
    'Juan Pérez',
    '2 años',
    Tipo.Frecuente,
    Genero.M,
    TipoSangre.APositivo,
  );
  miembro1.mostrarInfo();

  // Caso 2: Nuevo miembro con una fecha normal
  print('\n--- Caso 2: Nuevo miembro ---');
  final miembro2 = Miembro.registrarMiembroConFecha(
    2,
    1002,
    502,
    'Ana López',
    '3 años',
    Tipo.Ocasional,
    Genero.F,
    TipoSangre.ONegativo,
    DateTime(2021, 5, 15),
  );
   miembro2.mostrarInfo();

  // Caso 3: Cancelar la suscripción del miembro
  print('\n--- Caso 3: Cancelar la suscripción del miembro ---');
  miembro2.cancelaSuscripcion();
  miembro2.mostrarInfo();
}


enum Genero {
  M,
  F,
  NB
}

enum TipoSangre {
  APositivo,
  ANegativo,
  BPositivo,
  BNegativo,
  ABPositivo,
  ABNegativo,
  OPositivo,
  ONegativo,
}

enum Tipo {
  Frecuente,
  Ocasional,
  Nuevo,
  Esporadico,
  UnaSolaVisita,
}


abstract class Persona {
  String nombre;
  String tituloCortesia;
  String primerApellido;
  String segundoApellido;
  bool fotografia;
  Genero genero;
  TipoSangre tiposangre;
  bool estatus;
  DateTime fechaRegistro;
  DateTime fechaActualizacion;

  Persona({
    required this.nombre,
    required this.tituloCortesia,
    required this.primerApellido,
    required this.segundoApellido,
    required this.fotografia,
    required this.genero,
    required this.tiposangre,
    required this.estatus,
    required this.fechaRegistro,
    required this.fechaActualizacion,
  });

 
  void mostrarInfo();
}


class Miembro extends Persona {
  int idMiembro;
  int membresiaID;
  int usuarioID;
  Tipo tipo;
  String antiguedad;
  bool suscripcionActiva;

 
  Miembro({
    required this.idMiembro,
    required this.membresiaID,
    required this.usuarioID,
    required String nombre,
    required this.antiguedad,
    required this.tipo,
    required bool fotografia,
    required Genero genero,
    required TipoSangre tiposangre,
    required String tituloCortesia,
    required String primerApellido,
    required String segundoApellido,
    required bool estatus,
    required DateTime fechaRegistro,
    required DateTime fechaActualizacion,
    this.suscripcionActiva = true,
   
  }) : super(
          nombre: nombre,
          tituloCortesia: tituloCortesia,
          primerApellido: primerApellido,
          segundoApellido: segundoApellido,
          fotografia: fotografia,
          genero: genero,
          tiposangre: tiposangre,
          estatus: estatus,
          fechaRegistro: fechaRegistro,
          fechaActualizacion: fechaActualizacion,
        );

  

  @override
  void mostrarInfo() {
    print('Miembro ID: $idMiembro');
    print('Membresía ID: $membresiaID');
    print('Usuario ID: $usuarioID');
    print('Nombre: $nombre');
    print('Antigüedad: $antiguedad');
    print('Tipo de Miembro: $tipo');
    print('Estatus: ${suscripcionActiva ? 'Activo' : 'Inactivo'}');
    print('Fecha de Registro: $fechaRegistro');
    print('Fecha de Actualización: $fechaActualizacion');
  }

 

 
  static Miembro registrarMiembro(
    int idMiembro,
    int membresiaID,
    int usuarioID,
    String nombre,
    String antiguedad,
    Tipo tipo,
    Genero genero,
    TipoSangre tipoSangre,
  ) {
    return Miembro(
      idMiembro: idMiembro,
      membresiaID: membresiaID,
      usuarioID: usuarioID,
      nombre: nombre,
      antiguedad: antiguedad,
      tipo: tipo,
      fotografia: false,
      genero: genero,
      tiposangre: tipoSangre,
      tituloCortesia: '',
      primerApellido: 'Desconocido',
      segundoApellido: 'Desconocido',
      estatus: true,
      fechaRegistro: DateTime.now(),
      fechaActualizacion: DateTime.now(),
    );
  }

 
  static Miembro registrarMiembroConFecha(
    int idMiembro,
    int membresiaID,
    int usuarioID,
    String nombre,
    String antiguedad,
    Tipo tipo,
    Genero genero,
    TipoSangre tipoSangre,
    DateTime fechaRegistro,
  ) {
    return Miembro(
      idMiembro: idMiembro,
      membresiaID: membresiaID,
      usuarioID: usuarioID,
      nombre: nombre,
      antiguedad: antiguedad,
      tipo: tipo,
      fotografia: false,
      genero: genero,
      tiposangre: tipoSangre,
      tituloCortesia: '',
      primerApellido: 'Desconocido',
      segundoApellido: 'Desconocido',
      estatus: true,
      fechaRegistro: fechaRegistro,
      fechaActualizacion: DateTime.now(),
    );
  }

 
  void leerMiembro() {
    mostrarInfo();
  }

 
  void actualizarMiembro({String? nuevoNombre, String? nuevaAntiguedad, Tipo? nuevoTipo}) {
    if (nuevoNombre != null) {
      nombre = nuevoNombre;
    }
    if (nuevaAntiguedad != null) {
      antiguedad = nuevaAntiguedad;
    }
    if (nuevoTipo != null) {
      tipo = nuevoTipo;
    }
    fechaActualizacion = DateTime.now();
    print('Información del miembro actualizada.');
  }

 
  void eliminarMiembro() {
    suscripcionActiva = false;
    print('Miembro $nombre ha sido dado de baja.');
  }

  // Sobreescritura para cancelar la suscripción
  void cancelaSuscripcion() {
    suscripcionActiva = false;
    print('Suscripción cancelada para el miembro $nombre.');
  }
}
