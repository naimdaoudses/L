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
