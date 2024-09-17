void main(){
  // Variable para almacenar mi nombre
  var myName = 'Yair';
  String myLastName = 'Salazar';
  final int myDNI = 210256;
  late final int myAge;
  
  //Corregir mi nombre
  myName = "Yair González";
  //myDNI = 210256; Esto ocasiono un error porque la variable  esta definida como final
  
  print('Hola, $myName $myLastName, tu matricula es $myDNI y tu edad aún no la conozco, porque no se cuando naciste');
  
  //Interpolando el valor  de las variables con metodos de manipulacion o transformacion
    print('\nHola, ${myName.toUpperCase()} ${myLastName.toUpperCase()}, tu matricula es: $myDNI y tu edad aún no la conozco, porque no se cuando naciste')
}
