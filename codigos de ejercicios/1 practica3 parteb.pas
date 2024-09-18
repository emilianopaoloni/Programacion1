{

                            Online Pascal Compiler.
                Code, Compile, Run and Debug Pascal program online.
Write your code in this editor and press "Run" button to execute it.

}


program Hello;
function potencia(i,n:integer):integer;
var i1,resultado:integer;
begin
  resultado:=1;
  for i1:= 1 to n do
    resultado:=resultado*i;
  potencia:=resultado;
end;
var num,pot:integer;
begin
  writeln ('introduzca numero que quiere elevar al cuadrado');
  readln(num);
  pot:=2;
  writeln (potencia(num,pot));
  writeln('introduzca numero que quiere elevar al cubo');
  readln(num);
  pot:=3;
  writeln(potencia(num,pot));
  writeln('introduzca la potencia a la cual quiere eleavar el 2');
  readln(pot);
  num:=2;
  writeln(2*potencia(num,pot));
end.

