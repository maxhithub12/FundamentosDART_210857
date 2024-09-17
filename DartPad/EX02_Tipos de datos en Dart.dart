void main() {
  //Practica 04: Tipos de Datos en Dart
  //Cadenas
  final String pokemon = "Pikachu";
  
  final int hp = 100;
  final bool isAlive = true;
  final abilities = ['Impact-Trueno','Cola de Hierro','Ataque Rapido'];
  final sprites = <String> ['Pikachu_front.png','Pikachu_back.png'];
  
  print("""El pokemon que eligiste es: $pokemon
        -----------------------------------------
        Las estadisticas de $pokemon son:
        Vida (HP) : $hp
        Estadisticas de vida: $isAlive
        Habilidades: $abilities
        Imagenes: $sprites
        """);
