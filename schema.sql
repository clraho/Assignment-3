use WebDB;

create table User(
	UsernameID int not null,
    Username VARCHAR(50) not null,
    Fisrtname VARCHAR(50) not null,
    Lastname VARCHAR(50) not null,
    Age int not null,
    Primary key (UsernameID)
);

create table Password(
	PasswordID int not null,
    PasswordName VARCHAR(50) not null,
	UsernameID int not null,
    CreationDate DATE not null,
    ExpirationDate DATE not null,
    Primary key (PasswordID),
    Foreign key (UsernameID) references User(UsernameID)
);

create table Program(
	ProgramID int not null,
    ProgramName VARCHAR(50) not null,
    NbExos int not null,
    TypeProgram VARCHAR(50) not null,
    Duration time not null,
    Primary key (ProgramID)
);

create table ProgramCreated(
	ProgramCreatedID int not null,
    UsernameID int not null,
    ProgramName VARCHAR(50) not null,
    NbExos int not null,
    TypeProgram VARCHAR(50) not null,
    Duration time not null,
    Primary key (ProgramCreatedID),
	Foreign key (UsernameID) references User(UsernameID)
);

