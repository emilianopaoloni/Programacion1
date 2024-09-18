{

                            Online Pascal Compiler.
                Code, Compile, Run and Debug Pascal program online.
Write your code in this editor and press "Run" button to execute it.

}


program Hello;
const fin='0'; dimf=6;
type
  vector=array[1..dimf] of real;
procedure inicializar(var v:vector);
var i:integer;
begin
  for i:=1 to dimf do 
  begin
    v[i]:=0;
  end;
end;
procedure procesar(var v:vector);
var i:integer; monto:real;
begin
  writeln('ingrese numero de caja');
  readln(i);
  while(i<>0)do begin
    writeln('ingrese monto de la caja numero ',i);
    readln(monto);
    v[i]:=v[i]+monto;
    writeln('ingrese numero de la caja');
    readln(i);
    end;
end;
function maximo(v:vector):integer;
var cajamax:integer; montomax:real; i:integer;
begin
  cajamax:=0; montomax:=-1;
  for i:=1 to dimf do
  begin
    if(v[i]>montomax)then 
    begin
      montomax:=v[i];
      cajamax:=i;
    end;
  end;
  maximo:=cajamax;
end;
function promedio(v:vector; cmax:integer):real;
begin
  promedio:=v[cmax]/dimf;
end;
var v:vector;
begin
  inicializar(v);
  procesar(v);
  writeln('la caja con mas recaudaciones es la caja ',maximo(v));
  writeln('el promedio de la caja mas recaudada es ', promedio(v,maximo(v)));
end.
begin
  
end.

