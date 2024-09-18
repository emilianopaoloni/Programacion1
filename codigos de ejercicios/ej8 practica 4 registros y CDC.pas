{

                            Online Pascal Compiler.
                Code, Compile, Run and Debug Pascal program online.
Write your code in this editor and press "Run" button to execute it.

}


program ej4tp4;
type
  cadena12=string[12];
  puntajes=1..100;
  examen=record
    nombre:cadena12;
    continente:cadena12;
    puntaje:puntajes;
    end;
procedure lectura(var e:examen);
begin
  Writeln('escriba el nombre del candidate');
  readln(e.nombre);
  if(e.nombre<>'zzz')then
  begin
  Writeln('escriba el continente del candidate');
  readln(e.continente);
  writeln('escriba el puntaje del candidate');
  readln(e.puntaje);
  end;
end;
procedure calificacion(e:examen;var emas:examen; var min:integer);
begin
  if(e.puntaje>min)then begin
    min:=e.puntaje;
    emas:=e;
    end;
end;
procedure cantidad(e:examen; var aprobaron:integer;var promocionaron:integer);
begin
  if(e.puntaje>=90)then begin
    promocionaron:=promocionaron+1;
    aprobaron:=aprobaron+1;
    end
    else
      if (e.puntaje>=70)then
        aprobaron:=aprobaron+1;
end;
procedure cuenta(e:examen; var europeos:integer; var ptotal:integer);
begin
  if(e.continente='europa')then begin
    europeos:=europeos+1;
    ptotal:=ptotal+e.puntaje;
    end;
end;
var e,emas:examen; aprobaron,promocionaron,europeos,ptotal,min:integer;
   promedio:real; contactual:cadena12;
begin
  europeos:=0; ptotal:=0; min:=0;
  lectura(e);
  emas:=e;
  while(e.nombre<>'zzz')do begin
    contactual:=e.continente;
    aprobaron:=0; promocionaron:=0;
    while(contactual=e.continente)and(e.nombre<>'zzz')do
    begin
      cantidad(e,aprobaron,promocionaron);
      calificacion(e,emas,min);
      cuenta(e,europeos,ptotal);
      lectura(e);
    end;
    writeln('la cantidad de personas aprobadas de',contactual,' es de ', aprobaron);
    writeln('la cantidad de personas promocionadas de ',contactual, 'es de ' ,promocionaron);
  end;
  writeln('participante que obtuvo mejor calificacion es: ',emas.nombre);
  promedio:=ptotal div europeos;
  writeln('el puntaje promedio de notas de candidatos europeoss es de: ',promedio);
end.

