{

                            Online Pascal Compiler.
                Code, Compile, Run and Debug Pascal program online.
Write your code in this editor and press "Run" button to execute it.

}


program ej4tp4;
type
  cadena10=string[10];
  producto=record
    codigo:integer;
    precio:real;
    tipo:cadena10;
    unidades:integer;
    end;
procedure lectura(var p:producto);
begin
  writeln('escriba el codigo del producto');
  readln(p.codigo);
  if(p.codigo<>9999)then begin
    writeln('escriba el tipo de producto');
    readln(p.tipo);
    writeln('escriba el precio del producto');
    readln(p.precio);
    writeln('escriba las unidades del producto');
    readln(p.unidades);
    end;
end;
procedure cuenta(p:producto; var preciotot:real; var mermeladas:integer);
begin
  if(p.tipo='mermelada')then begin
    preciotot:=preciotot+p.precio;
    mermeladas:=mermeladas+p.unidades;
    end;
end;
procedure maximos(p:producto; var p1:producto; var p2:producto);
var maxuni1,maxuni2:integer;
begin
  maxuni1:=0; maxuni2:=0;
  if (p.unidades>maxuni1) then begin
    maxuni1:=p.unidades;
    p2:=p1;
    p1:=p;
    end
  else 
      if (p.unidades>maxuni2)then begin
        maxuni2:=p.unidades;
        p2:=p;
        end;
end;
var p,p1,p2:producto;
    preciotot,promedio:real; mermeladas:integer;
begin
  preciotot:=0; mermeladas:=0;
  lectura(p);
  p1:=p; p2:=p;
  if(p.codigo<>9999)then begin
    while(p.codigo<>9999) do 
    begin
      writeln(p.unidades);
      cuenta(p,preciotot,mermeladas);
      maximos(p,p1,p2);
      lectura(p);
    end;
  promedio:=preciotot/mermeladas;
  writeln('el precio promedio de las mermeladas es de:',promedio);
  writeln('los codigos de los productor con mayor unidades son:');
  writeln(p1.codigo,'y',p2.codigo);
  end;
end.
