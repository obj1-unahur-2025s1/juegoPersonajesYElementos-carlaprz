object castillo {
  var defensa = 150
  
  method altura() = 20
  
  method defensa() = defensa
  
  method recibirAtaque(potencia) {
    defensa -= potencia
  }
  
  method recibirTrabajo() {
    defensa += 20
    defensa = defensa.min(200)
  }
  
  method recompensaPorTrabajo() = defensa / 5
}

object aurora {
  var estaViva = true
  
  method altura() = 1
  
  method estaVida() = estaViva
  
  method morir() {
    estaViva = false
  }
  
  method recibirAtaque(potencia) {
    if (potencia >= 10) self.morir()
  }
  
  method recibirTrabajo() {
    
  }
  
  method recompensaPorTrabajo() = 15
}

object tipa {
  var altura = 8
  
  method altura() = altura
  
  method crecer(numero) {
    altura += numero
  }
  
  method recibirAtaque(potencia) {
    
  }
  
  method recibirTrabajo() {
    self.crecer(1)
  }
  
  method recompensaPorTrabajo() = altura * 2
}
