namespace consultorio.hospital;

entity Doctor
{
    key ID : UUID;
    apellido : String;
    email : String;
    especialidad : String;
    nombre : String;
    turnos : Association to many Turno on turnos.doctor = $self;
}

entity Paciente
{
    key ID : UUID;
    apellido : String;
    dni : Integer;
    email : String;
    nombre : String;
    telefono : String;
    edad : Integer;
    turnos : Association to many Turno on turnos.paciente = $self;
    obraSocial : String;
}

entity Turno
{
    key ID : UUID;
    TurnoId : String;
    estado_turno : EstadoTurno;
    fechaHora : DateTime;
    motivo : LargeString;
    doctor : Association to one Doctor;
    especialidad : String;
    recetas : Composition of many Receta on recetas.turno = $self;
    paciente : Association to one Paciente;
}

entity Receta
{
    key ID : UUID;
    Tipo : TipoReceta;
    turno : Association to one Turno;
    carnet : String;
    fecha : DateTime;
    descripcion : String;
}

type EstadoTurno : String enum
{
    pendiente;
    completado;
    cancelado;
}

type TipoReceta : String enum
{
    medicamento;
    estudio;
    certificado;
}
