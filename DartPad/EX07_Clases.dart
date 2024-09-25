void main() {
  final Hero wolverine = Hero('Logan', 'Regeneracion');
  final Agrupacion xmen = Agrupacion(name: 'X-men', type:'Heroes');
  final brotherhood = Agrupacion(name: 'The brotherhood of the evil mutants');
  
  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);
  print("-------------------");
  print(xmen);
  print(xmen.name);
  print(xmen.type);
  //invocando el metodo reescrito con @override
  print("-------------------");
  print(brotherhood);
  print(brotherhood.name);
  print(brotherhood.type);
  //invocando el metodo reescrito con @override
  print(brotherhood.toString());
}

class Hero {
  String name;
  String power;
  
  Hero(String pName, String pPower)
    : name = pName,
      power = pPower;
}

class Agrupacion {
  String name;
  String type;
  
  Agrupacion({required this.name, this.type="No definido"});
  
  @override
  String toString(){
    return 'Grupo: $name, Tipo: $type';
  }
}
