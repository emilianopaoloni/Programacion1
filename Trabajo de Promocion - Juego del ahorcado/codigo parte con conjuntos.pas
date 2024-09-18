{

                            Online Pascal Compiler.
                Code, Compile, Run and Debug Pascal program online.
Write your code in this editor and press "Run" button to execute it.

}


program Hello;
type
  conjuntoPalabrasDichas= set of integer;
  
procedure inicializarConjuntosVacios (var c1,c2,c3,c4,c4: conjuntoPalabrasDichas);
begin
  c1:=[];
  c2:=[];
  c3:=[];
  c4:=[];
  c5:=[];
end;
  
procedure guardarPalabraDicha(var c1,c2,c3,c4,c5: conjuntoPalabrasDichas; categoria:integer; palabra:integer);
begin
  case categoria of
  1: c1:= c1 + [palabra];
  2: c2:= c2 + [palabra];
  3: c3:= c3 + [palabra];
  4: c4:= c4 + [palabra];
  5: c5:= c5 + [palabra];
  end;
end;

  
var
c1,c2,c3,c4,c5: conjuntoPalabrasDichas;
n, j: integer;
begin
  i:=2;
  n:=1;
  guardarPalabraDicha(c1,c2,c3,c4,c5,n,i);
  if (1 IN c1)then writeln('palabra 1 ya se dijo');
              else writeln ('palabra 1 no se dijo');
  end;
end.

