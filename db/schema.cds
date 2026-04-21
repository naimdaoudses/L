namespace consultorio.hospital;

entity Doctores
{
    key ID : String;
    apellido : String;
    email : String;
    especialidad : String;
    nombre : String;
    turnos : Association to many Turnos on turnos.doctor = $self;
}

entity Pacientes
{
    key ID : String;
    apellido : String;
    dni : Decimal;
    email : String;
    nombre : String;
    telefono : String;
    turnos : Association to many Turnos on turnos.paciente = $self;
    edad : Decimal;
}

entity Turnos
{
    key ID : UUID;
    TurnoId : String;
    estado_turno : Enum1;
    fechaHora : DateTime;
    motivo : String;
    doctor : Association to one Doctores;
    paciente : Association to one Pacientes;
    especialidad : String; //yea
}

type Enum1 : String enum
{
    pendiente;
    completado;
    cancelado;
}
