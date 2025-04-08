import objetos.*
import personas.*

object bolichito {
    var objetoMostrador = pelota
    var objetoVidriera = remera

    method setObjetoMostrador(unObjeto){
        objetoMostrador = unObjeto
    }
    method setObjetoVidriera(unObjeto){
        objetoVidriera = unObjeto
    }

    method esBrillante(){
        return objetoMostrador.material().esBrillante() &&
            objetoVidriera.material().esBrillante()
    }

    method esMonocromatico(){
        return objetoVidriera.color() == objetoMostrador.color()
    }

    method estaEquilibrado() {
        return objetoVidriera.peso() < objetoMostrador.peso()
    }

    method hayObjetoConColor(color){
        return (objetoMostrador.color() == color || 
                objetoVidriera.color() == color)
    }

    method sePuedeMejorar() {
        return not self.esMonocromatico() || self.estaEquilibrado()
    }

    method puedeOfrecerAAlguien(persona){
        return persona.leGusta(objetoVidriera) || 
                persona.leGusta(objetoMostrador)
    }
}