object caperucita {
    method peso() = 60 

    method manzana() = 0.2 //peso de la manzana

    var cantManzanas = 6

    var canasta = self.manzana() * cantManzanas

    method pesoTotal(){
      return self.peso() + canasta
    }

    method cruzarBosque() {
      canasta -= self.manzana()
      cantManzanas -= 1
    }
    
    method sufrirCrisis() {
      // se le caen las manzanas
      cantManzanas = 0
    }
}