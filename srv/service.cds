using { consultorio.hospital as my } from '../db/schema.cds';

@path : '/service/ConsultoriaMedicaService'
service ConsultoriaMedicaService
{
    entity Turnos as projection on my.Turno;
    entity Pacientes as projection on my.Paciente;
    entity Doctores as projection on my.Doctor;
    entity Recetas as projection on my.Receta;

    // Agregamos la entidad virtual para los estados (solución del desplegable)
    @readonly
    entity EstadosTurno {
        key ID : String;
    }
    @readonly
    entity TiposReceta {
        key ID : String;
    }
}

annotate ConsultoriaMedicaService with @requires : [
    'authenticated-user'
];
annotate ConsultoriaMedicaService with @odata.draft.enabled;
// ... (lo que ya tenías en service.cds) ...

annotate ConsultoriaMedicaService.Turnos with @odata.draft.enabled;

annotate ConsultoriaMedicaService.Turnos with @(
    UI.LineItem : [
        { $Type: 'UI.DataField', Value: TurnoId },
        { $Type: 'UI.DataField', Value: fechaHora },
        // ... el resto de tus campos ...
    ],
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            { $Type: 'UI.DataField', Value: TurnoId },
            // ... el resto de tus campos ...
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'Información General',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);

annotate ConsultoriaMedicaService.Pacientes with @odata.draft.enabled;
