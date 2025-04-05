object ballesta {
  var flechas = 10
  
  method potencia() = 4
  
  method usarEn(elemento) {
    elemento.recibirAtaque(self.potencia())
    flechas -= 1
  }
  
  method estaCargada() = flechas > 0
}

object jabalina {
  var cargada = true
  
  method descargar() {
    cargada = false
  }
  
  method potencia() = 30
  
  method estaCargada() = cargada
  
  method usarEn(elemento) {
    elemento.recibirAtaque(self.potencia())
    self.descargar()
  }
}
