use WebDB;

select * from user, password;
select ProgramName, NbExos, TypeProgram, Duration 
from ProgramCreated inner join User on ProgramCreated.UsernameID = User.UsernameID;
select Username, PasswordName from Password inner join User on Password.UsernameID = User.UsernameID;
select Program.ProgramName, Program.NbExos, ProgramCreated.ProgramName, ProgramCreated.NbExos 
from Program, ProgramCreated 
where Program.NbExos > 6 and ProgramCreated.NbExos > 6;