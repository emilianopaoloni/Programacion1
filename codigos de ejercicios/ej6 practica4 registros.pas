{

                            Online Pascal Compiler.
                Code, Compile, Run and Debug Pascal program online.
Write your code in this editor and press "Run" button to execute it.

}


program ej6practica4;
type
  sucursal=record
    bicivend:integer;
    totalfac:real;
    bicidef:integer;
    totaldev:real;
    end;
function gananciames(s:sucursal):real;
begin
  gananciames:=s.totalfac-s.totaldev;
end;
procedure lectura(var s:sucursal);
begin
  write('escriba la cantidad de bicis vendidas en el mes');
  readln(s.bicivend);
  write('escriba el total facturado en el mes');
  readln(s.totalfac);
  write('escriba el total de bicis defectuosas en el mes');
  readln(s.bicidef);
  write('escriba el total devuelto debido a las bicis defectuosas');
  readln(s.totaldev);
end;
procedure mesmayorganancia(ganancia:real;mes:integer;var mayor:real; var mesmayor:integer);
begin
  if(ganancia>mayor)then begin
    mayor:=ganancia;
    mesmayor:=mes;
  end;
end;
procedure gananciamarzo(ganancia:real; mes:integer; var sumamarzo:real);
begin
  if(mes=3) then
    sumamarzo:=sumamarzo+ganancia;
end;
procedure gananciasucursal(gananciames:real; var gsucursal:real);
begin
  gsucursal:= gsucursal+ gananciames;
end;
procedure sucursalminimo(var sucmin:integer; gsucursal:real; var minimo:real; suc: integer);
begin
  if(gsucursal<minimo) then begin
    minimo:=gsucursal;
    sucmin:=suc;
  end;
end;
var s:sucursal;
    suc, sucmin, mes, mesmayor: integer;
    mayor, sumamarzo, gsucursal, minimo, promedio: real;
begin
  sumamarzo:=0; minimo:=9999; mayor:=0; mesmayor:=0; sucmin:=0;
  for suc:= 1 to 2 do
  begin
    gsucursal:=0;
    for mes:= 1 to 2 do
    begin
      lectura(s);
      gananciames(s);
      gananciamarzo(gananciames(s),mes,sumamarzo);
      mesmayorganancia(gananciames(s),mes,mayor,mesmayor);
      gananciasucursal(gananciames(s),gsucursal);
    end;
    sucursalminimo(sucmin,gsucursal,minimo,suc);
    write('el mes con mayor ganancia de la sucursal ', suc,' es ', mesmayor);
  end;
  write('la sucursal con menor ganancia es:', sucmin);
  promedio:=sumamarzo/7;
  write(promedio);
end.
end.

