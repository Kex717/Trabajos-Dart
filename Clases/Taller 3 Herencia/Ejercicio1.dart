class Persona{
  String cedula;
  String nombre;
  String edad;
  String sexo;
  double faltasMaximas;

  Persona (this.cedula, this.nombre, this.edad, this.sexo, this.faltasMaximas);

}

class Instructor extends Persona{
  String MateriaAsignada;

  Instructor (String cedula, String nombre, String edad, String sexo, double faltasMaximas, this.MateriaAsignada) 
    : super(cedula, nombre, edad, sexo, faltasMaximas);

  
}

class Aprendiz extends Persona{
  double califiacion;
  Aprendiz(String cedula, String nombre, String edad, String sexo, double faltasMaximas, this.califiacion)
  : super(cedula, nombre, edad, sexo, faltasMaximas);
}