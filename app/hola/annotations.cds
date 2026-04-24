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
        estado_turno,
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
);

annotate service.Turnos with {
    estado_turno @(
        Common.Label : 'estado_turno',
        Common.ExternalID : estado_turno,
    )
};

