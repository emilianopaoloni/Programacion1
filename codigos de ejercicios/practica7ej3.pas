{

                            Online Pascal Compiler.
                Code, Compile, Run and Debug Pascal program online.
Write your code in this editor and press "Run" button to execute it.

}


program tres;
const fin='0'; dimf=8;
type
  caja=record
    monto: real;
    montotot:real;
    end;
 vector=array[1..dimf]of caja;
procedure inicializar(var v:vector);
var c: integer;
begin
  for c:=1 to 8 do
  begin
    v[c].montotot:=0;
  end;
end;
procedure procesar(var v:vector);
var c:integer;
begin
  writeln('escriba el numero de caja ');
  readln(c);
  while(c<>0)do
  begin
    writeln('escriba el monto facturado de la caja ',c);
    readln(v[c].monto);
    v[c].montotot:=v[c].montotot+v[c].monto;
    readln(c);
  end;
end;
procedure mayor(v:vector; var cmayor);
var  montomayor:real; c:integer;
begin
  montomayor:=0;
  for c:=1 to 8 do begin
    if(v[c].montotot>montomayor)then
    begin
      montomayor:=v[c].montotot;
      cmayor:=c;
    end;
  end;
end;
function promedio(v:vector): real;
var montostotales:real; c:integer;
begin
  montostotales:=0;
  for c:= 1 to 8 do
  begin
    montostotales:= montostotales+v[c].montotot;
  end;
  promedio:= montostotales/dimf;
end;
var ca:caja; v:vector; cmayor:caja;
begin
  inicializar(v);
  procesar(v);
  mayor(v,cmayor);
  writeln('la caja que mas facturo es ', cmayor);
  writeln('el promedio total facturado es de ',promedio(v));
end.
