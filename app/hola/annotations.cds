using ConsultoriaMedicaService as service from '../../srv/service';
annotate service.Turnos with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'TurnoId',
                Value : TurnoId,
            },
            {
                $Type : 'UI.DataField',
                Label : 'estado_turno',
                Value : estado_turno,
            },
            {
                $Type : 'UI.DataField',
                Label : 'fechaHora',
                Value : fechaHora,
            },
            {
                $Type : 'UI.DataField',
                Label : 'motivo',
                Value : motivo,
            },
            {
                $Type : 'UI.DataField',
                Label : 'especialidad',
                Value : especialidad,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>IdDeTurno}',
            Value : TurnoId,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>EstadoDelTurno}',
            Value : estado_turno,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Fechahora}',
            Value : fechaHora,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Motivo}',
            Value : motivo,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Especialidad}',
            Value : especialidad,
        },
        {
            $Type : 'UI.DataField',
            Value : doctor.nombre,
            Label : 'nombre',
        },
    ],
    UI.SelectionFields : [
        estado_turno,
        fechaHora,
    ],
);

annotate service.Turnos with {
    doctor @Common.ValueList : {
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
    }
};

annotate service.Turnos with {
    paciente @Common.ValueList : {
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
    }
};

annotate service.Turnos with {
    estado_turno @Common.Label : 'estado_turno'
};

annotate service.Turnos with {
    fechaHora @Common.Label : 'fechaHora'
};

