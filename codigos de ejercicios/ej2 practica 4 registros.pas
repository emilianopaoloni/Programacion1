{

                            Online Pascal Compiler.
                Code, Compile, Run and Debug Pascal program online.
Write your code in this editor and press "Run" button to execute it.

}


program ej6practica4;
type
  tiempo=record
    horas: 00..23;
    minutos: 00..59;
    end;
procedure lectura(var t:tiempo);
begin
  readln(t.horas);
  readln(t.minutos);
end;
procedure dif(t1:tiempo;t2:tiempo);
var minutos1, minutos2, diferencia, difhs, difmin: integer;
begin
  minutos1:= t1.horas*60+ t1.minutos;
  minutos2:= t2.horas*60+ t2.minutos;
  if(minutos1>=minutos2)then
    diferencia:=minutos1-minutos2
    else
     diferencia:=minutos2-minutos1;
  difhs:=diferencia DIV 60;
  difmin:= diferencia MOD 60;
  writeln('la diferencia en hs es de',difhs);
  writeln('la diferencia en minutos es de',difmin);
end;
function menor (t1:tiempo; t2:tiempo):tiempo;
var minutos1, minutos2: integer;
begin
  minutos1:= t1.horas*60+t1.minutos;
  minutos2:= t2.horas*60+t2.minutos;
  if (minutos1<minutos2)then
    menor:=t1
    else
      menor:=t2;
end;
var t1,t2: tiempo;
begin
  lectura(t1);
  lectura(t2);
  dif(t1, t2);
  write('el menor tiempo entre los dos es horas: ', menor(t1,t2).horas,' y minutos ', menor(t1,t2).minutos);
end.
