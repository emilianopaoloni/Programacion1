{

                            Online Pascal Compiler.
                Code, Compile, Run and Debug Pascal program online.
Write your code in this editor and press "Run" button to execute it.

}


program tres;
const fin='0'; cajas=8
type
  caja=record
    numero:integer;
    monto:real;
    montotot:real;
  end;
  vector=array[1..cajas]of caja;
procedure inicializar(var v:vector);
var c:integer;
begin
  for c:= 1 to 8 do
  begin
    v[c].montotot:=0;
  end;
end;
procedure procesar (var v:vector);
var c:integer; numcaja:integer;
begin
  writeln('ingrese el numero de la caja ');
  readln(numcaja);
  c:=numcaja;
  while(c<>fin)do
  begin
    v[c].numero:=numcaja
  wr

begin
  writeln ('Hello World')
end.

