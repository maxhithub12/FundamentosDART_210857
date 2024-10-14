void main() async {
  
  // Muestra en la consola que el programa ha comenzado
  print('Inicio del programa');
  
  try {
    // Ejecuta la función httpGet de forma asíncrona y espera a que se complete
    final value = await httpGet('https://fernando-herrera.com/cursos');
    
    // Si la función se resuelve correctamente, muestra el resultado en la consola
    print( 'éxito: $value' );
    
  } on Exception catch(err) {
    // Si se lanza una excepción de tipo Exception, la captura y la muestra
    print('Tenemos una Exception: $err');
    
  } catch (err) {
    // Captura cualquier error que no sea una Exception y lo imprime
    print('OOP!! algo inesperado ocurrió: $err');
    
  } finally {
    // Este bloque se ejecuta siempre, sin importar si hubo o no un error, e indica el fin del try-catch
    print('Fin del try y catch');
  }
  
  // Muestra que el programa ha llegado a su final
  print('Fin del programa');
}

// Función asíncrona que simula una solicitud HTTP y arroja una excepción tras un breve retardo
Future<String> httpGet( String url ) async {
  
  // Introduce una espera de 1 segundo para simular el tiempo de respuesta de una petición
  await Future.delayed( const Duration(seconds: 1));
  
  // Lanza una excepción del tipo Exception con un mensaje de error
  throw Exception('No hay parámetros en el URL');
}
