{

                            Online Pascal Compiler.
                Code, Compile, Run and Debug Pascal program online.
Write your code in this editor and press "Run" button to execute it.

}


program ejercicio_entregable;
const maxprod=40;
type
  cadenacodigo=string[8];
  cadenanombre=string[12];
  descripProducto=string[50];
  prodvendido=record
    codigo:cadenacodigo;
    monto:real;
    cantcomprada:integer;
    end;
  venta=record
    cliente:cadenanombre;
    producto: prodvendido;
    end;
  prodpromocion=record
    codigo:cadenacodigo;
    descripcion:descripProducto;
    end;
  vector=array[1..maxprod]of prodpromocion;
  
procedure Leerprodpromocion(var v:vector);
var i:integer;
begin
  for i:=1 to maxprod do 
  begin
    readln(v[i].codigo);
    readln(v[i].descripcion);
  end;
end;
procedure Nombre (v:vector; codigo:cadenacodigo);
var N: cadenacodigo; pri,ult,medio,j:integer;
begin
  N:=0;
  pri:=1;
  ult:=maxprod;
  medio:=(pri+ult) div 2;
  while(pri<=ult)and(codigo<>v[medio].codigo)do
  begin
    if(codigo<v[medio].codigo)then
      ult:=medio-1
    else
      pri:=medio+1;
    medio:=(pri+ult) div 2;
  end;
  if (pri<=ult)then
    N:=v[medio].codigo;
  else
    N:=' ';
  wirteln('el nombre del codigo ingresado es: ', N);
end;

    
    
    
begin
  writeln ('Hello World')
end.

