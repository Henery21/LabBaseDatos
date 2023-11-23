use TiendaLacteos;
create sequence ReporteIngresoID_Secuencia
    start with 1
    increment by 1
    no cycle;


UPDATE ReporteIngresoProductos
set ID_ReporteIngreso = next value for ReporteIngresoID_Secuencia;


alter sequence ProveedoresID_Secuencia
    restart with 1;