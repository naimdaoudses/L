const cds = require('@sap/cds')

module.exports = (srv) => {
    const { Turnos } = srv.entities
    srv.before('CREATE', 'Turnos', (req) => {
        const { fechaHora } = req.data
        
        if (fechaHora) {
            const hoy = new Date().toISOString()
            const fechaTurnoDate = new Date(fechaHora)
            const hora = fechaTurnoDate.getHours()

            // 1. Validación: Que no sea en el pasado
            if (fechaHora < hoy) {
                return req.error(400, `Error, No podes agendar un turno para el pasado (${fechaHora}).`)
            }

            // 2. Validación: Horario laboral (06:00 a 18:00)
            if (hora >= 18 || hora < 6) {
                return req.error(400, 'El horario debe estar dentro de la jornada laboral (06:00 a 18:00)')
            }
        }
    })
}