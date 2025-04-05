import armas.*
import elementos.*

object luisa {
  var personajeActivo = null
  
  method personaje() = personajeActivo
  
  method asignarPersonaje(personaje) {
    personajeActivo = personaje
  }
  
  method aparece(elemento) {
    personajeActivo.encontrar(elemento)
  }
}

object floki {
  var arma = ballesta
  
  method arma() = arma
  
  method arma(unArma) {
    arma = unArma
  }
  
  method encontrar(elemento) {
    if (arma.estaCargada()) arma.usarEn(elemento)
  }
}

object mario {
  var valorRecolectado = 0
  var ultimoElemento = null
  
  method encontrar(elemento) {
    self.aumentarValorRelectado(elemento.recompensaPorTrabajo())
    elemento.recibirTrabajo()
    self.ultimoElemento(elemento)
  }
  
  method ultimoElemento(elemento) {
    ultimoElemento = elemento
  }
  
  method aumentarValorRelectado(recompensa) {
    valorRecolectado += recompensa
  }
  
  method hayUltimoElemento() = ultimoElemento != null
  
  method esFeliz() = (valorRecolectado >= 50) || (self.hayUltimoElemento() && (ultimoElemento.altura() > 10))
}
