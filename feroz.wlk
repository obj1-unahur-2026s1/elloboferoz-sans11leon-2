object feroz {
  var peso = 10

  method peso() = peso

  var esSaludable = false
  
  //method esSaludable() = self.peso().between(20, 150)

  method esSaludable(){
      if (self.peso().between(20, 150)){
        esSaludable = true
      }
      return esSaludable
  }

  method aumentarPeso(nro) {
    peso += nro
  }

  method disminuirPeso(nro) {
    peso -= nro
  }

  method sufrirCrisis() {
    peso = 10
  }

  method comer(cant) {
    peso += (cant * 0.1)
  }

  method corre() {
    peso -= 1
  }
}