void main(){
  final auto1 = {
    'marca': 'Mercedes Benz',
    'color': 'Blanco',
    'anio': '2010',
    'radio': true,
  };
  final auto2 = {
    'marca': 'Mitsubishi',
    'color': 'Negro',
    'anio': '2019',
    'radio': true,
  };
  final auto3 = {
    'marca': 'Wolskvagen',
    'color': 'Plomo',
    'anio': '2018',
    'radio': true
  };
  final auto4 = {
    'marca': 'Skooda',
    'color': 'Rojo',
    'anio': '2005',
    'radio': true
  };
  
  final carro1 = Vehiculos.fromJson(auto1);
  final carro2 = Vehiculos.fromJson(auto2);
  final carro3 = Vehiculos.fromJson(auto3);
  final carro4 = Vehiculos.fromJson(auto4);
  
  print(carro1);
  print(carro2);
  print(carro3);
  print(carro4);
}

class Vehiculos {
  String marca;
  String color;
  String anio;
  bool radio;
  
  Vehiculos({
    required this.marca, 
    required this.color,
    required this.anio,
    required this.radio
    });
  
  Vehiculos.fromJson(Map<dynamic, dynamic> json):
    this.marca = json['marca']?? 'No tiene marca', 
    this.color = json['color']?? 'No tiene color',
    this.anio = json['anio']?? 'No tiene año',
    this.radio = json['radio']?? 'No tiene radio';
    
  @override
  String toString(){
    return 'Vehiculos: Marca: ${this.marca}, Color: ${this.color}, Año: ${this.anio}, Radio ${this.radio}';
  }
}