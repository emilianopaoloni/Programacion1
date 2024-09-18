{

                            Online Pascal Compiler.
                Code, Compile, Run and Debug Pascal program online.
Write your code in this editor and press "Run" button to execute it.

}

program tres;
const
  dimfa=8; dimfb=3;
type
  vectora=array[1..dimfa]of integer;
  vectorb=array[1..dimfb]of integer;
procedure lectura (var a: vectora; var b:vectorb; var dimla,dimlb:integer);
var valor:integer; i:integer;
begin
  repeat
   if(dimla<=dimfa) then begin
    writeln('Ingrese un valor para el vector a (o -1 para terminar): ');
    readln(valor);
    if (valor <> -1) then begin
      dimla:=dimla+1;
      a[dimla]:=valor;
    end;
    end;
  until (valor = -1);
  
  for i:= 1 to dimfb do
  begin
    writeln('Ingrese un valor para la posicion ',i,' del vector b');
    readln(b[i]);
    dimlb:=dimlb+1;
  end;
end;
procedure informarveca(a:vectora);
var i:integer;
begin
  for i:=1 to dimfa do
    writeln(a[i]);
end;
procedure insertar(var a:vectora; var dimla:integer; b:vectorb; dimlb:integer; i:integer);
var pos1,pos2:integer;
begin
  if(i>0)and(i<=dimla)and(dimlb<=dimfa-dimla)then
  begin
    for pos1:=1 to dimlb do begin
      for pos2:=dimla downto i+1 do 
        a[pos2+1]:=a[pos2];
      a[i+pos1]:=b[pos1];
    end;
  end;
end;

var a:vectora; b:vectorb; dimla,dimlb:integer; i:integer;
begin
  dimlb:=0;dimla:=0;
  lectura(a,b,dimla,dimlb);
  writeln('ingrese un numero i tal que se inserten los componentes del vector b entre las componentes i e i+1 del vector a');
  readln(i);
  insertar(a,dimla,b,dimlb,i);
  informarveca(a);
end.
  
