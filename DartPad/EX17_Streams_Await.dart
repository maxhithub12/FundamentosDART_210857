void main() {
  
  // Ejecuta la función emitNumber(), que retorna un Stream asíncrono.
  // Escucha las emisiones del Stream y muestra cada valor en la consola.
  emitNumber().listen( (int value) {
    print( 'Stream value: $value' );
  });
}


Stream<int> emitNumber() async* {
  
  // Se definen los valores que serán enviados por el Stream
  final valuesToEmit = [1, 2, 3, 4, 5];
  
  // Recorre cada número en la lista de valores
  for( int i in valuesToEmit ) {
    
    // Pausa la ejecución durante 1 segundo antes de enviar el cada valor
    await Future.delayed( const Duration(seconds: 1));
    
    // Envía el número actual de 'i' al Stream
    yield i;
  }
}
