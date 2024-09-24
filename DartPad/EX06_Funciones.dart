void main() {
  
  //FUNCIONES
  //1. Llamado de una funcion basica
  greetEveryone();
  //2. Llamado de una funcion que retorna un valor
  //2.1 Si no deseamos almacenar el valor, se invoca normalmente
  print("Hoy es el dia numero ${getDayNumber()}");
  //2.2 Necesitamos almacenar el valor retornado para utilizar su valor en otras operaciones del programa
  final numeroDia = getDayNumber();
  print("En 3 dias estaremos a ${(numeroDia+3)}");
  //3. Llamado de una funcion con parametros
  print (greetSomeone("Marco A."));
  //3.1 
  print (greetSomeone(45));
  print (greetSomeone(-15));
  print (greetSomeone(3.141516));
  print (greetSomeone(true));
  //3.2
//   print (greetSomeoneTyped(45));
//   print (greetSomeoneTyped(-15));
//   print (greetSomeoneTyped(3.141516));
//   print (greetSomeoneTyped(true));
  print(greetSomeoneTyped("Hugo Sanchez"));
  
  //4. Llamado de funciones con varios parametros posicionales
  print(greetSomeoneHourOfDay("Marco A.",17));
  //¿Que pasaria si solo envio un parametro?
  
  /*Analizando la funcion determinamos que la hora puede ser nula y se puede definir con la hora actual del SO*/
  print(greetSomeoneHourOfDay("Max.",null));
  
  //5. FUNCIONES LAMBDA, ANONIMAS, ARROW FUNCTIONS, FUNCIONES FLECHA
  //Las funciones lambda tambien conocidas como funciones anonimas o funciones flecha, se ejcutan de manera simple y no frecuentemente en las ejecucion de un programa o sistema en DART estas funciones solo pueden tener una sola instruccion para usar el operador =>
  final double costoTotal;
  var calculaTotalCarrito = (double productQuantity, double productPrice, double percentageDiscount) => 
    (productQuantity*productPrice)*((100-percentageDiscount)/100);
  
  double cantidad = 3.180;
  double precio = 1725.10;
  double descuento= 8;
  
 print ("""Costo del producto: ${precio}
           Cantidad solicitada: ${cantidad}
           Descuento definido: ${descuento}
           --------------------------------
           Costo total: ${calculaTotalCarrito(cantidad, precio, descuento)}""");
  
  //6. llamado de una funcion con parametros nombrados
  print(infoCarListStatus(buyerName: "Gabriela"));
  
  print(infoCarListStatus(status:"En espera de pago",
                          amountCarList:2412.12,
                          buyerName: "Gabriela"));
  
}

//1. FUNCIONES SIN PARAMETROS Y SIN RETORNO DE VALOR
greetEveryone() //<----- Dnamyc
{
  print("Hola a todos y todas desde DART");
}

//2. FUNCIONES QUE RETORNAN VALORES
int getDayNumber() //<----- retorna un entero
{
  DateTime now = DateTime.now();
  return now.day;
}

//3. FUNCIONES QUE REQUIEREN DE ALMENOS UN PARAMETRO(Sin tipifacion)
String greetSomeone(personaName)
{
  return "Hola ${personaName}";
}

//3.1 FUNCION QUE RECIBE PARAMETROS TIPIFICADOS
String greetSomeoneTyped(String personaName)
{
  return "Hola ${personaName}";
}

//4. FUNCIONES QUE RECIBE MAS DE UN PARAMETRO
// int? - Puede ser vacio
// [] - Puede ser opcional
String greetSomeoneHourOfDay(String personaName, [int? hourDay])
{
  String greeting;
  //El operador significa que si es nulo lo inicialice como, en que tenga valor, ignora la instruccion
  hourDay ??=DateTime.now().hour;
  print("Hora: ${hourDay}");
  if(hourDay>= 6 && hourDay<12)
  {
    greeting= "Buenos dias";
  }
  else if(hourDay>= 12 && hourDay<18)
  {
    greeting = "Buenas Tardes";
  }
  else 
  {
    greeting = "Buenas noches";
  }
  
  return "${greeting}, ${personaName}";
}

//6. FUNCIONES CON PARAMETROS NOMBRADOS
String infoCarListStatus({required String buyerName, double amountCarList=0.0, String status="Seleccion de producto"})
{
  return "El carrito de compras de: ${buyerName}, tiene un total de: ${amountCarList} y actualmente esta en estatus: ${status}";
}