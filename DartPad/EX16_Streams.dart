void main() {
  
  // Invoca la función emitNumbers(), la cual regresa un Stream, y escucha las emisiones.
  // Cada vez que el Stream envía un dato, la función anónima lo imprime.
  emitNumbers().listen( (value) {
    print('Stream value: $value');
  });
  
}


Stream<int> emitNumbers() {
  
  // Devuelve un Stream que emite números enteros de manera periódica.
  // Con el Stream.periodic genera un nuevo dato cada 2 segundos
  return Stream.periodic( const Duration(seconds: 2), (value) {
    
    // Para cada nueva emisión, se devuelve el número correspondiente a la iteración.
    return value;
    
  // El método .take() asegura que el Stream sólo emita los primeros 5 números.
  }).take(5);
  
}
