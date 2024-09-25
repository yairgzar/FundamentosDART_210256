void main(){
  //Clase con parametros posicionales
  final wolverine = Hero('Logan','Regeneracion');
  //Clase com parametros no posicionales, los puedo mandar en desorden
  final xmen = Team(type: "Heroes", name:  "X-Men");
  final brotherhood = Team(name: "The Brotherhood of Evil Mutants");

  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);
  print("-----------------------");
  print(xmen);
  print(xmen.name);
  print(xmen.type);
  print("-----------------------");
  print(brotherhood);
  print(brotherhood.name);
  print(brotherhood.type);
  //Invocando el metodo rescrito con @Override
  print(brotherhood.toString());
  
}

class Hero {
  String name;
  String power;

  Hero(String pName, String pPower)
    : name = pName, power= pPower;
}


class Team{
  String name;
  String type;

  Team({required this.name, this.type = "No Definido"});
  
  @override
  String toString(){
      return 'Grupo  : $name, Tipo: $type';
  }
}
