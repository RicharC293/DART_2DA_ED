void main() {
  
  // final diaDeLaSemana = DiaDeLaSemana.LUNES;
  // if (diaDeLaSemana == DiaDeLaSemana.LUNES) {
  //   print("Es lunes");
  // }
  // print(DiaDeLaSemana.values);

  final diaDeLaSemanaDescriptivo = DiaDeLaSemanaDescriptivo.MONDAY;

  if(diaDeLaSemanaDescriptivo == DiaDeLaSemanaDescriptivo.MONDAY) {
    print(diaDeLaSemanaDescriptivo.descripcion);
    print("Es Lunes");
  }

}

// Revisar
// class EnumGeneral {
//   enum get diaDeLaSemana => DiaDeLaSemana;
// }

// Enum simple
enum DiaDeLaSemana {
  LUNES,
  MARTES,
  MIERCOLES,
  JUEVES,
  VIERNES,
  SABADO,
  DOMINGO,
}

// Enum descriptivo
enum DiaDeLaSemanaDescriptivo {
  MONDAY("LUNES"),
  MARTES("Es normal"),
  MIERCOLES("Mitad"),
  JUEVES("YA CASI"),
  VIERNES("YEI!");


  // Simple -> "assets/carpeta/image1.png" 
  // Enum -> image1("assets/carpeta/image2.png"),
  // DiaDeLaSemanaDescriptivo.image1.descripcion

  final String descripcion;
  const DiaDeLaSemanaDescriptivo(this.descripcion);
}
