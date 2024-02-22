class Portions extends _Portions {

  Portions._privateConstructor();

  static final Portions _instance = Portions._privateConstructor();

  factory Portions() {
    return _instance;
  }
}

class _Portions {
    String appBarText = 'Porciones de';
    final Map<String, String> _vegetables = {
    "Betabel crudo": "38 grs",
    "Brócoli cocido": "½ taza",
    "Calabacita": "½ taza",
    'Cebolla': '½ taza',
    "Champiñon": "1 taza",
    "Chayote": "½ taza",
    "Colifor cruda": "¾ taza",
    "Ejotes": "½ taza",
    "Espinaca cocida": "½ taza",
    "Espinaca cruda": "2 tazas",
    "Jícama": "½ taza",
    "Jitomate": "1 taza",
    "Jugo de zanahoria": "¼ taza",
    "Lechuga": "3 tazas",
    "Nopal": "1 taza",
    "Pepino": "1 ¼ taza",
    "Pimiento": "1 pieza",
    "Salsas caseras": "½ taza",
    "Zanahoria": "½ taza",
  };

  final Map<String, String> _fruits = {
    "Agua de coco": "1 ½ taza",
    "Blueberries": "¾ taza",
    "Ciruela": "3 piezas",
    "Ciruela pasa": "7 piezas",
    "Durazno": "2 piezas",
    "Frambuesa": "1 taza",
    "Fresa": "1 taza",
    "Fruta picada": "1 taza",
    "Guayaba": "3 piezas",
    "Jugo de naranja o toronja": "½ taza",
    "Kiwi": "1 ½ pieza",
    "Mango": "1 pieza",
    "Manzana": "1 pieza",
    "Melón": "1 taza",
    "Naranja": "2 piezas",
    "Papaya": "1 taza",
    "Pera": "½ pieza",
    "Platano": "½ pieza",
    "Sandía": "1 taza",
    "Toronja": "1 pieza",
    "Uvas": "18 piezas",
  };

  final Map<String, String> _cereals = {
    "Arroz cocido": "¼ taza",
    "Amaranto natural": "¼ taza",
    "Avena cocida": "¾ taza",
    "Avena cruda": "⅓ taza",
    "Birote": "⅓ pieza",
    "Cereal de caja": "½ taza",
    "Elote": "1 ½ taza",
    "Elote enlatado": "½ taza",
    "Galletas Marías": "5 piezas",
    "Galleta salada": "4 piezas",
    "Palomitas Naturales": "2 ½ taza",
    "Pan de caja": "1 pieza",
    "Papa": "85 grs",
    "Papa cambray": "5 piezas",
    "Pasta": "½ taza",
    "Tortilla de maíz": "1 pieza",
    "Tortilla de harina": "1 pieza",
    "Tortilla de harina integral": "1 pieza",
    "Tostada deshidratada": "2 piezas",
  };

  final Map<String, String> _foodAnimalOrigin = {
    "Atún en agua": "30 grs",
    "Bistec de res": "30 grs",
    "Camarón": "5 piezas",
    "Cecina": "25 grs",
    "Cuete de res": "45 grs",
    "Falda de res": "25 grs",
    "Filete de pescado": "45 grs",
    "Molida de pollo o res": "30 grs",
    "Milanesa de pollo o res": "30 grs",
    "Pollo": "30 grs",
    "Carne de cerdo": "40 grs",
    "Panela": "40 grs",
    "Salmón": "30 grs",
    "Huevo": "1 pieza",
    "Salchicha": "1 pieza",
    "Jamón de pavo": "2 rebanadas",
  };

  final Map<String, String> _legumes = {
    "Chicharo": "½ taza",
    "Frijoles cocidos": "½ taza",
    "Frijoles fritos": "⅓ taza",
    "Garbanzo": "½ taza",
    "Lenteja": "½ taza",
    "Soya cocida": "⅓ taza",
    "Soya texturizada": "35 grs"
  };

  final Map<String, String> _dairy = {
    "Leche entera, light, deslactosada": "1 taza",
    "Leche de soya": "1 taza",
    "Yogurt light natural o de fruta": "1 taza",
  };

  final Map<String, String> _fatsWithoutProtein = {
    "Aceite": "1 cdita",
    "Aderezo": "½ cda",
    "Aguacate": "⅓ pieza",
    "Coco": "12 grs",
    "Crema": "1 cda",
    "Mantequilla": "1 ½ cdita",
    "Tocino": "1 rebanada",
  };

  final Map<String, String> _fatsWithProtein = {
    "Almendras": "10 piezas",
    "Cacahuate": "14 piezas",
    "Chia": "7 cdas",
    "Chorizo": "15 grs",
    "Nuez": "3 piezas",
    "Semillas de girasol": "4 cditas",
  };

  final Map<String, String> _sugars = {
    "Azúcar": "2 cditas",
    "Gomitas": "4 piezas",
    "Chocomilk": "2 cditas",
    "Miel": "2 cditas",
    "Paleta de agua": "1 pieza",
    "Catsup": "2 cdas",
    "Nieve": "1 bola",
  };

  late Map<String, Map<String, String>> portionsByName = {
    'vegetableGroup': _vegetables,
    'fruitGroup': _fruits,
    'cerealsGroup': _cereals,
    'foodAnimalOriginGroup': _foodAnimalOrigin,
    'legumesGroup': _legumes,
    'dairyGroup': _dairy,
    'fatsWithoutProteinGroup': _fatsWithoutProtein,
    'fatsWithProteinGroup': _fatsWithProtein,
    'sugarsGroup': _sugars,
  };
}