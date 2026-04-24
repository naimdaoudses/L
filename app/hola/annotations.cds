using ConsultoriaMedicaService as service from '../../srv/service';
annotate service.Turnos with {
    doctor @(
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Doctores',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : doctor_ID,
                    ValueListProperty : 'ID',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'apellido',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'email',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'especialidad',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'nombre',
                },
            ],
        },
        Common.ExternalID : doctor.apellido,
        Common.FieldControl : #Mandatory,
    )
};

annotate service.Turnos with {
    paciente @(
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Pacientes',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : paciente_ID,
                    ValueListProperty : 'ID',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'apellido',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'dni',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'email',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'nombre',
                },
            ],
        },
        Common.ExternalID : paciente.nombre,
        Common.FieldControl : #Mandatory,
    )
};

annotate service.Turnos with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : TurnoId,
                Label : '{i18n>IdDeTurno}',
            },
            {
                $Type : 'UI.DataField',
                Value : estado_turno,
                Label : '{i18n>EstadoDelTurno}',
            },
            {
                $Type : 'UI.DataField',
                Value : fechaHora,
                Label : '{i18n>DiaDelTurno}',
            },
            {
                $Type : 'UI.DataField',
                Value : motivo,
                Label : '{i18n>Motivo}',
            },
        ],
    },
    UI.SelectionFields : [
        
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : TurnoId,
            Label : '{i18n>IdDeTurno}',
        },
        {
            $Type : 'UI.DataField',
            Value : paciente.apellido,
            Label : '{i18n>ApellidoPaciente}',
        },
        {
            $Type : 'UI.DataField',
            Value : paciente.dni,
            Label : '{i18n>DniPaciente}',
        },
        {
            $Type : 'UI.DataField',
            Value : paciente.obraSocial,
            Label : '{i18n>ObraSocial}',
        },
        {
            $Type : 'UI.DataField',
            Value : motivo,
            Label : '{i18n>MotivoDeLaConsulta}',
        },
        {
            $Type : 'UI.DataField',
            Value : doctor.apellido,
            Label : '{i18n>ApellidoDelDoctorAsignado}',
        },
    ],
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : '{i18n>Turno}',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>Doctor}',
            ID : 'a',
            Target : '@UI.FieldGroup#a',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>Paciente}',
            ID : 'Paciente',
            Target : '@UI.FieldGroup#Paciente',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Recetas Médicas',
            ID : 'RecetasFacet',
            Target : 'recetas/@UI.LineItem', // Apunta a la tabla de recetas
        },
    ],
    UI.FieldGroup #Doctor : {
        $Type : 'UI.FieldGroupType',
        Data : [
        ],
    },
    UI.FieldGroup #Form : {
        $Type : 'UI.FieldGroupType',
        Data : [
        ],
    },
    UI.FieldGroup #a : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : doctor.apellido,
                Label : '{i18n>Apellido}',
            },
            {
                $Type : 'UI.DataField',
                Value : doctor.nombre,
                Label : '{i18n>Nombre}',
            },
            {
                $Type : 'UI.DataField',
                Value : doctor.email,
                Label : '{i18n>Email}',
            },
            {
                $Type : 'UI.DataField',
                Value : doctor.especialidad,
                Label : '{i18n>Especialidad}',
            },
            {
                $Type : 'UI.DataField',
                Value : doctor_ID,
                Label : '{i18n>IdDelDoctor}',
            },
        ],
    },
    UI.FieldGroup #Paciente : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : paciente.apellido,
                Label : '{i18n>Apellido}',
            },
            {
                $Type : 'UI.DataField',
                Value : paciente.nombre,
                Label : '{i18n>Nombre}',
            },
            {
                $Type : 'UI.DataField',
                Value : paciente.dni,
                Label : '{i18n>Dni}',
            },
            {
                $Type : 'UI.DataField',
                Value : paciente.edad,
                Label : '{i18n>Edad}',
            },
            {
                $Type : 'UI.DataField',
                Value : paciente.email,
                Label : '{i18n>Email}',
            },
            {
                $Type : 'UI.DataField',
                Value : paciente.obraSocial,
                Label : '{i18n>ObraSocial}',
            },
            {
                $Type : 'UI.DataField',
                Value : paciente.telefono,
                Label : '{i18n>Telefono}',
            },
            {
                $Type : 'UI.DataField',
                Value : paciente_ID,
                Label : '{i18n>IdDelPaciente}',
            },
        ],
    },
    UI.SelectionPresentationVariant #tableView : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
        Text : '{i18n>Turnos}',
    },
    UI.LineItem #tableView : [
        {
            $Type : 'UI.DataField',
            Value : paciente.nombre,
            Label : '{i18n>Nombre}',
        },
        {
            $Type : 'UI.DataField',
            Value : paciente.apellido,
            Label : '{i18n>Apellido}',
        },
        {
            $Type : 'UI.DataField',
            Value : paciente.dni,
            Label : '{i18n>Dni}',
        },
        {
            $Type : 'UI.DataField',
            Value : paciente.edad,
            Label : '{i18n>Edad}',
        },
        {
            $Type : 'UI.DataField',
            Value : paciente.email,
            Label : '{i18n>Mail}',
        },
        {
            $Type : 'UI.DataField',
            Value : paciente.obraSocial,
            Label : '{i18n>ObraSocial}',
        },
        {
            $Type : 'UI.DataField',
            Value : paciente.telefono,
            Label : '{i18n>Telefono}',
        },
    ],
    UI.SelectionPresentationVariant #tableView1 : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem#tableView',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
        Text : '{i18n>Paciente}',
    },
);

annotate service.Turnos with {
    estado_turno @(
        Common.Label : '{i18n>EstadoDelTurno}',
        Common.ValueListWithFixedValues : true,
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'EstadosTurno', // Apunta a la nueva entidad del service
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : estado_turno,
                    ValueListProperty : 'ID'
                }
            ]
        }
    )
};

annotate service.Pacientes with @(
    UI.LineItem : [
        { Value: nombre, Label: '{i18n>Nombre}' },
        { Value: apellido, Label: '{i18n>Apellido}' },
        { Value: dni, Label: '{i18n>Dni}' },
        { Value: email, Label: '{i18n>Email}' }
    ],
    UI.HeaderInfo: {
        TypeName: 'Paciente',
        TypeNamePlural: 'Pacientes',
        Title: { Value: apellido }
    },
    UI.Facets: [
        { $Type: 'UI.ReferenceFacet', Label: 'Datos del Paciente', Target: '@UI.FieldGroup#DetallePaciente' }
    ],
    UI.FieldGroup #DetallePaciente: {
        Data: [
            { Value: nombre,
                Label : '{i18n>Nombre}', },
            { Value: apellido,
                Label : '{i18n>Apellido}', },
            { Value: dni,
                Label : '{i18n>Dni}', },
            { Value: email,
                Label : '{i18n>Email}', },
            { Value: telefono,
                Label : '{i18n>Telefono}', },
            { Value: obraSocial,
                Label : '{i18n>ObraSocial}', },
            {
                $Type : 'UI.DataField',
                Value : edad,
                Label : '{i18n>Edad}',
            },
            {
                $Type : 'UI.DataField',
                Value : ID,
                Label : '{i18n>Id}',
            },
        ]
    },
    UI.LineItem #tableView : [
        {
            $Type : 'UI.DataField',
            Value : nombre,
            Label : '{i18n>Nombre}',
        },
        {
            $Type : 'UI.DataField',
            Value : apellido,
            Label : '{i18n>Apellido}',
        },
        {
            $Type : 'UI.DataField',
            Value : dni,
            Label : '{i18n>Dni}',
        },
        {
            $Type : 'UI.DataField',
            Value : edad,
            Label : '{i18n>Edad}',
        },
        {
            $Type : 'UI.DataField',
            Value : email,
            Label : '{i18n>Email}',
        },
        {
            $Type : 'UI.DataField',
            Value : obraSocial,
            Label : '{i18n>ObraSocial}',
        },
        {
            $Type : 'UI.DataField',
            Value : telefono,
            Label : '{i18n>Telefono}',
        },
    ],
    UI.SelectionPresentationVariant #tableView : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem#tableView',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
        Text : '{i18n>Pacientes}',
    },
);

annotate service.Receta with @(
    UI.LineItem : [
        { Value: Tipo, Label: 'Tipo de Receta' },
        { Value: fecha, Label: 'Fecha' },
        { Value: descripcion, Label: 'Descripción' },
        { Value: carnet, Label: 'Nro Carnet' }
    ]
);
annotate service.Doctores with @(
    UI.LineItem #tableView : [
    ],
    UI.SelectionPresentationVariant #tableView : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem#tableView',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
        Text : 'Table View Doctores',
    },
);

annotate service.Turnos with {
    TurnoId @Common.ExternalID : TurnoId
};

annotate service.Doctores with {
    apellido @Common.FieldControl : #ReadOnly
};

annotate service.Doctores with {
    nombre @Common.FieldControl : #ReadOnly
};

annotate service.Doctores with {
    email @Common.FieldControl : #ReadOnly
};

annotate service.Doctores with {
    especialidad @Common.FieldControl : #ReadOnly
};

annotate service.Pacientes with {
    apellido @Common.FieldControl : #ReadOnly
};

annotate service.Pacientes with {
    nombre @Common.FieldControl : #ReadOnly
};

annotate service.Pacientes with {
    dni @Common.FieldControl : #ReadOnly
};

annotate service.Pacientes with {
    edad @Common.FieldControl : #ReadOnly
};

annotate service.Pacientes with {
    email @Common.FieldControl : #ReadOnly
};

annotate service.Pacientes with {
    obraSocial @Common.FieldControl : #ReadOnly
};

annotate service.Pacientes with {
    telefono @Common.FieldControl : #ReadOnly
};

annotate service.Turnos with {
    motivo @UI.MultiLineText : true
};

