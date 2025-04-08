//colores
object rojo {
  method esFuerte(){
    return true
  }
}

object verde {
  method esFuerte(){
    return true
  }
}

object celeste {
  method esFuerte(){
    return false
  }
}

object pardo {
  method esFuerte(){
    return false
  }
}

//materiales
object lino {
  method esBrillante(){
    return false
  }
}

object madera {
  method esBrillante(){
    return false
  }
}

object cuero {
  method esBrillante(){
    return false
  }
}

object cobre {
  method esBrillante(){
    return true
  }
}

object vidrio {
  method esBrillante(){
    return true
  }
}

//cosas
object remera {
  method color() = rojo
  method material() = lino
  method peso() = 800
}

object pelota {
  method color() = pardo
  method material() = cuero
  method peso() = 1300
}

object biblioteca {
  method color() = verde
  method material() = madera
  method peso() = 8000
}

object munieco {
  var peso = 0
  method setPeso(unPeso){
    peso = unPeso
  }

  method peso() = peso 
  method color() = celeste
  method material() = vidrio
}

object placa {
  var peso = 0
  method setPeso(unPeso){
    peso = unPeso
  }
  
  var color = pardo
  method setColor(unColor){
    color = unColor
  }

  method peso() = peso 
  method color() = color
  method material() = cobre
}