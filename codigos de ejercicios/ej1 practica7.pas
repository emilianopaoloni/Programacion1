{

                            Online Pascal Compiler.
                Code, Compile, Run and Debug Pascal program online.
Write your code in this editor and press "Run" button to execute it.

}


program ej1practica7;
const m=40.5; F=570; fin=8;
type
  vector=array[1..fin]of real;
procedure cargar(var v:vector);
var i:integer;
begin
   for i:=1 to fin do
    begin
     writeln('escriba un numero real del vector en la posicion ',i);
     readln(v[i]);
    end;
end;
function promedio(v:vector): real;
var i:integer; total:real;
begin
  total:=0;
  for i:=1 to fin do
    total:=total+v[i];
  promedio:=total/fin;
end;
function cantidad(v:vector; m:real; F:real): integer;
var i:integer; cant:integer;
begin
  cant:=0;
  for i:=1 to 40 do
  begin
    if(I<v[i])and(v[i]<F)then
      cant:=cant+1;
  end;
  cantidad:=cant;
end;
procedure maximos(v: vector);
var max1,max2:real; pos1,pos2,i:integer;
begin
  max1:=0; max2:=0; pos1:=0; pos2:=0;
  for i:=1 to fin do
  begin
    if(v[i]>max1) then begin
      max2:=max1;
      pos2:=pos1;
      max1:=v[i];
      pos1:=i;
    end
    else
      if(v[i]>max2)then begin
        max2:=v[i];
        pos2:=i;
      end;
  end;
  writeln('el primer valor maximo es',max1,' en posicion ',pos1);
  writeln('el segundo valor maximo es: ',max2,' en posicion', pos2);
end;
var v:vector;
begin
  cargar(v);
  writeln('el promedio de los valores del vector es de:', promedio(v));
  writeln('la cantidad de valores deel vector que estan entre ', m,' y ',F,' son ',cantidad(v,m,F));
  maximos(v);
end.
  
  

