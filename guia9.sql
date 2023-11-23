use TiendaLacteos;
--Mostrar empleados con su respectivo cargo.
create view VistaEmpleadosConRoles as
select 
    E.ID_Empleado,
    E.NombresEmpleado,
    E.ApellidosEmpleado,
    E.DUI_Empleado,
    C.Nombre_Cargo as Cargo
from
    Empleados E
join 
    Cargo C on E.ID_Cargo = C.ID_Cargo;

select*from  VistaEmpleadosConRoles;