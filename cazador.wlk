import feroz.*
import caperucita.*
import abuelita.*
import chanchitos.*


object cazador {
    var peso = 90

    method peso() = peso

    method ataca(objetivo) {
        objetivo.sufrirCrisis()
    }

    var estaLleno = false

    method comer(elemento) {
        peso = peso + elemento.peso() * 0.2
        estaLleno = true
    }
}