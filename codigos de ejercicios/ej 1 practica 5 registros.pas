{

                            Online Pascal Compiler.
                Code, Compile, Run and Debug Pascal program online.
Write your code in this editor and press "Run" button to execute it.

}


program Hello;
type  prisma=record
        altura:real;
        ancho:real;
        profundidad:real;
        end;
procedure lectura(var p:prisma);
begin 
  writeln('escriba la altura del prisma');
  readln(p.altura);
  writeln('escriba el ancho del prisma');
  readln(p.ancho);
  writeln('escriba la profundidad del prisma');
  readln(p.profundidad);
end;
function volumen(var p:prisma):real;
begin
  volumen:=p.altura*p.ancho*p.profundidad;
end;
function area(var p:prisma):real;
begin
  area:=2*p.altura*(p.profundidad+p.ancho)+2*p.profundidad*p.ancho;
  end;
var p:prisma;
begin
lectura(p);
writeln('el volumen del prisma en cm es', volumen(p));
writeln('el area del prisma en cm es', area(p));
end.
begin
  writeln ('Hello World')
end.

