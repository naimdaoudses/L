using { consultorio.hospital as my } from '../db/schema.cds';

@path : '/service/ConsultoriaMedicaService'
service ConsultoriaMedicaService
{
    entity Turnos as projection on my.Turno;
    entity Pacientes as projection on my.Paciente;
    entity Doctores as projection on my.Doctor;
}

annotate ConsultoriaMedicaService with @requires : [
    'authenticated-user'
];
annotate ConsultoriaMedicaService with @odata.draft.enabled; 