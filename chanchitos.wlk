object chanchitos {
    var peso = 40 //peso de cada chanchito

    method peso() = peso

    var casitasEnBuenEstado = 3

    method casitasRestantes() = casitasEnBuenEstado.max(0)

    method sufrirCrisis() {
        casitasEnBuenEstado -= 1
    }
}