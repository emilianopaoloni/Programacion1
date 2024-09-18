{

                            Online Pascal Compiler.
                Code, Compile, Run and Debug Pascal program online.
Write your code in this editor and press "Run" button to execute it.

}


program Hello;
const
  MAX_PALABARAS=30;
  MAX_CATE=5;
type
  conjunto=set of 1..i;
  VectorConjuntos=array[1..MAX_CATE]of conjunto;

procedure AgregarAlConjunto(var v:VectorConjuntos, num:integer, categoria:integer);
begin
  if( num IN v[categoria]) then writeln ('este numero ya se dijo, pedir otro')
                           else include(v[categoria],num);           //esto agrega el num al conjunto
end;

var i:integer; v:VectorConjuntos; num:integer; categoria:integer ;
begin
  i:=4;
  agregarAlconjunto (v,num,categoria);
  end.
