import chanchitos.*
import caperucita.*
import feroz.*
import cazador.*
import abuelita.*

object historia {

    // feroz corre hacia el bosque
    method escena1() {
        feroz.corre()
        return "feroz corre hacia el bosque"
    }

    // feroz corre hacia la casa y se come a la abuelita
    method escena2() {
        feroz.corre()
        abuelita.sufrirCrisis()
        feroz.comer(abuelita.peso())
        return "feroz corre hacia la casa y se come a la abuelita"
    }

    // caperucita cruza el bosque hasta llegar a la casa de su abuelita
    method escena3() {
      caperucita.cruzarBosque()
      return "caperucita cruza el bosque hasta llegar a la casa de su abuelita"
    }

    // feroz se come a caperucita y la canasta, luego el cazador aparece
    method escena4() {
      feroz.comer(caperucita.pesoTotal())
      return "feroz se come a caperucita y la canasta, luego el cazador aparece"
    }
    
    //FINALES

    // el cazador es devorado por feroz
    method final1() {
        self.escena1()
        self.escena2()
        self.escena3()
        self.escena4()
        feroz.comer(cazador.peso())
        return feroz.esSaludable()
    }

    // el cazador ataca a feroz
    method final2() {
        self.escena1()
        self.escena2()
        self.escena3()
        self.escena4()
        cazador.ataca(feroz)
        return feroz.esSaludable()
    }

    // feroz busca a los chanchitos y se los come
    method final3() {
        self.escena1()
        chanchitos.sufrirCrisis()
        feroz.comer(chanchitos.peso())

        feroz.corre()    
        chanchitos.sufrirCrisis()
        feroz.comer(chanchitos.peso())

        feroz.corre()
        chanchitos.sufrirCrisis()
        feroz.comer(chanchitos.peso())

        return feroz.esSaludable()
    }

    // el cazador encuentra a los cerditos primero y deja al lobo sin comida (final cannon XD)
    method final4() {
        cazador.ataca(chanchitos)
        cazador.comer(chanchitos)

        cazador.ataca(chanchitos)
        cazador.comer(chanchitos)
        
        cazador.ataca(chanchitos)
        cazador.comer(chanchitos)

        return feroz.esSaludable()
    }
}