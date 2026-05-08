object nave {
    const pasajeros = []

    method subirPasajero(pasajero) = pasajeros.add(pasajero)
    method subirPasajeros(listaPasajeros) = pasajeros.addAll(listaPasajeros)
    method bajarPasajero(pasajero) = pasajeros.remove(pasajero)

    method cantidadDePasajeros() = pasajeros.size()
    method pasajeroDeMayorVitalidad() = pasajeros.max({p => p.vitalidad()})
    method pasajeroDeMenorVitalidad() = pasajeros.min({p => p.vitalidad()})
    method estaEquilibrada() = self.pasajeroDeMenorVitalidad() * 2 <= self.pasajeroDeMayorVitalidad()
    method elegidoEstaEnNave() = pasajeros.any({p => p.esElElegido()})

    method chocar() {pasajeros.forEach({p => p.saltar(); pasajeros.clear()})} 
    method name() {pasajeros.filter({p => !p.esElElegido()}).forEach({p => p.saltar()})}
}