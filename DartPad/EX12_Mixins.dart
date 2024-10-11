abstract class Animal {}
abstract class Mamifero extends Animal {}
abstract class Ave extends Animal {}
abstract class Pez extends Animal {}

mixin Volador {
  void volar() => print('estoy volando');
  void planear(int distanciaMaxima) => print('Este animal puede planear hasta: ${distanciaMaxima} km/h');
  void ascender(double alturaMaxima) => print('Este animal puede ascender hasta una altura de ${alturaMaxima} mts. sobre el nivel del mar.');
  void descender(String velocidadMax) => print('Este animal puede descender a una velocidad de hasta: ${velocidadMax}');
}

mixin Caminante {
  void caminar() => print('estoy caminando');
  void correr(String velocidadMax) => print('Este animal puede correr a una velocidad de hasta: ${velocidadMax}');
  void trotar(bool puedeTrotar) => print('Este animal ${puedeTrotar ? "" : "no"} puede trotar.');
  void saltar(bool puedeSaltar) => print('Este animal ${puedeSaltar ? "" : "no"} puede saltar.');
}

mixin Nadador {
  void nadar() => print('estoy nadando');
  void sumergir(int profundidadMaxima) => print('Este animal se puede sumergir a una profundidad de hasta: ${profundidadMaxima} mts.');
  void respirar(bool puedeRespirar) => print('Este animal ${puedeRespirar ? "" : "no"} puede respirar sobre el agua.');
}

class Delfin extends Mamifero with Nadador {}
class Gato extends Mamifero with Caminante {}
class GatoSiames extends Gato {}
class Murcielago extends Mamifero with Volador, Caminante {}
class Tiburon extends Pez with Nadador {}
class TiburonOceanico extends Tiburon {}
class Paloma extends Ave with Caminante, Volador {}
class Pato extends Ave with Caminante, Volador, Nadador {}
class PezVolador extends Pez with Nadador, Volador {}

void main() {
  final fliper = Delfin();
  print("Instanciando la clase Delfin, y accediendo a sus funciones.");
  fliper.nadar();
  print("-------------------------------------------------------------");
  print("Instanciando la clase Murcielago y accediendo a sus funciones");
  final chupacabras = Murcielago();
  chupacabras.caminar();
  chupacabras.volar();
  print("-------------------------------------------------------------");
  print("Instanciando la clase de Pato, y accediendo a sus funciones");
  final pekines = Pato();
  pekines.caminar();
  pekines.planear(100);
  pekines.ascender(30);
  pekines.descender("5 km/h");
  pekines.volar();
  pekines.nadar();
  print("-------------------------------------------------------------");
  print("Instanciando la clase Tiburon Oceanico, y accediendo a sus funciones");
  final tiburonO = TiburonOceanico();
  tiburonO.nadar();
  tiburonO.sumergir(200);
  tiburonO.respirar(true);
  print("-------------------------------------------------------------");
  print("Instanciando la clase Gato Siames, y accediendo a sus funciones");
  final siames = GatoSiames();
  siames.caminar();
  siames.correr('20 km/h');
  siames.trotar(true);
  siames.saltar(true);
}
