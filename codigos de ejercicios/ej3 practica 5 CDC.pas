{

                            Online Pascal Compiler.
                Code, Compile, Run and Debug Pascal program online.
Write your code in this editor and press "Run" button to execute it.

}


program ej3practica5;
type
  cadena20=string[20];
  datos=record
    pais: cadena20;
    provincia:cadena20;
    ciudad:cadena20;
    dinero:real;
    habciudad:integer;
    end;
procedure lectura(var d:datos);
begin
  writeln('ingrese el pais');
  readln(d.pais);
  if(d.pais<>'zzz') then
  begin
    writeln('ingrese provincia');
    readln(d.provincia);
    writeln('ingrese ciudad');
    readln(d.ciudad);
    writeln('ingrese dinero');
    readln(d.dinero);
    writeln('ingrese habitantes de la ciudad');
    readln(d.habciudad);
  end;
end;
var d:datos; ingresopais,ingresoprov,ingresociu:real;
    habprov,habpais,habxciudad:integer; paisactual,ciudadactual,provactual:cadena20;
begin
  lectura(d);
  while(d.pais<>'zzz')do
  begin
    paisactual:=d.pais;
    ingresopais:=0;
    habpais:=0;
    while (d.pais=paisactual)do
    begin
      provactual:=d.provincia;
      ingresoprov:=0;
      habprov:=0;
      while(d.provincia=provactual)and(d.pais<>'zzz')do
      begin
        ciudadactual:=d.ciudad;
        ingresociu:=0;
        habxciudad:=0;
        while(d.ciudad=ciudadactual)and(d.pais<>'zzz')do
        begin
          habxciudad:=habxciudad+d.habciudad;
          ingresociu:=ingresociu+d.dinero;
          ingresoprov:=ingresoprov+d.dinero;
          ingresopais:=ingresopais+d.dinero;
          habprov:=habprov+d.habciudad;
          habpais:=habpais+d.habciudad;
          lectura(d);
        end;
        writeln(ciudadactual,ingresociu);
        writeln('el ingreso por habitante en', ciudadactual,' es de ', ingresociu / habprov);
      end;
      writeln(provactual,ingresoprov);
      writeln('el ingreso por hab en',provactual,' es de', ingresoprov / habprov);
    end;
    writeln(paisactual,ingresopais);
    writeln('el ingreso por habitante en', paisactual, 'es de ', ingresopais / habpais);
  end;
end.


