void main() async {
  
  // Muestra un mensaje que indica que el programa ha iniciado
  print('Inicio del programa');
  
  try {
    // Ejecuta la función httpGet de forma asíncrona y espera a que se complete,
    // luego asigna el resultado a la variable 'value'
    final value = await httpGet('https://fernando-herrera.com/cursos');
    
    // Si la función httpGet retorna un valor correctamente, lo imprime en la consola
    print( value );
    
  } catch (err) {
    // Si ocurre una excepción durante el proceso, se captura y se muestra el error
    print('Tenemos un error: $err');
  }
  
  // Informa que el programa ha llegado a su final
  print('Fin del programa');
}

// Método asíncrono que representa una llamada HTTP a la URL indicada
Future<String> httpGet( String url ) async {
  
  // Pausa la ejecución del código durante 1 segundo antes de continuar
  await Future.delayed( const Duration(seconds: 1));
  
  // Simula una falla en la petición lanzando una excepción
  throw 'Error en la petición';

}
