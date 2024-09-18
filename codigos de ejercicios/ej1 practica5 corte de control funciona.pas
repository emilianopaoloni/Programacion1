{

                            Online Pascal Compiler.
                Code, Compile, Run and Debug Pascal program online.
Write your code in this editor and press "Run" button to execute it.

}


program ej1bptactica5;
type
  cadena15=string[15];
  colectivo=record
    empresa:cadena15;
    linea:integer;
    patente:char;
    monto:real;
    end;
procedure lectura(var c:colectivo);
begin
  writeln('escriba el nombre de la empresa del colectivo');
  readln(c.empresa);
  if (c.empresa<>'fin') then
  begin
    writeln('escriba el numero de linea del colectivo');
    readln(c.linea);
    writeln('escriba la patente del colectivo');
    readln(c.patente);
    writeln('escriba el monto monto');
    readln(c.monto);
  end;
end;
var c:colectivo; lineaactual:integer; montoempresa, montolinea:real; empresaactual:cadena15;
begin
  lectura(c);
  while(c.empresa<>'fin')do
  begin
    empresaactual:=c.empresa;
    montoempresa:=0;
    while(c.empresa=empresaactual)do
    begin
      lineaactual:=c.linea;
      montolinea:=0;
      while(c.linea=lineaactual)and(c.empresa<>'fin') do
      begin
        montolinea:= montolinea+c.monto ;
        montoempresa:= montoempresa+c.monto ;
        lectura(c);
      end;
      writeln('el monto de la linea ',lineaactual, ' es ', montolinea);
    end;
    writeln('el monto de la empresa ', empresaactual, ' es ', montoempresa);
  end;
end.

