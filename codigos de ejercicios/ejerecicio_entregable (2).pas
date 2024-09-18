{

                            Online Pascal Compiler.
                Code, Compile, Run and Debug Pascal program online.
Write your code in this editor and press "Run" button to execute it.

}


program ejercicio_entregable;
const MAX_PROD=40;
type
  cadenacodigo=string[8];
  prodvendido=record
    codigo:cadenacodigo;
    monto:real;
    cantcomprada:1..10;
    end;
  venta=record
    cliente:string;
    producto: prodvendido;
    end;
  prodpromocion=record
    codigo:cadenacodigo;
    descripcion:string;
    end;
  vector=array[1..MAX_PROD]of prodpromocion;
  Lista=^nodo;
  nodo=record
      ventas: venta;
      sig: Lista;
      end;
  
procedure Leerprodpromocion(var v:vector);
var i:integer;
begin
  for i:=1 to MAX_PROD do 
  begin
    readln(v[i].codigo);
    readln(v[i].descripcion);
  end;
end;
procedure Nombre (v:vector; codigo:cadenacodigo; var N:string);
var pri,ult,medio,j:integer;
begin
  N:=' ';
  pri:=1;
  ult:=MAX_PROD;
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
    N:=v[medio].descripcion
  else
    N:=' ';
  wirteln('el producto del codigo ingresado es: ', N);
end; 
function existe (v:vector; codigo:cadenacodigo; N:string): boolean;
begin
  Nombre(v,codigo,N);
  if (N<>' ')then  existe:= true
             else  existe:=false;
end;
procedure generarlista (var L:Lista);
var nue:Lista;
begin
  New(nue);
  writeln('ingrese el nombre del cliente (zzz para terminar)');
  readln(nue^.ventas.cliente);
  while (nue^.ventas.cliente<>'zzz')do
  begin
    writeln('ingrese la cantidad de productos comprados (maximo 10)');
    readln(nue^.ventas.producto.cantcomprada);
    while (nue^.ventas.producto.cantcomprada>10) do begin               // vuelve a pedir cant comprada si es >10
      writeln('ingrese la cantidad de productos comprados (maximo 10)');
      readln(nue^.ventas.producto.cantcomprada);
      end;
    writeln('ingrese el codigo del producto comprado');
    readln(nue^.ventas.producto.codigo);
    while(nue^.ventas.producto.codigo<8)or(nue^.ventas.producto.codigo>8)do begin  // vuelve a pedir cod si es invalido
      writeln('ingrese el codigo del producto comprado');
      readln(nue^.ventas.producto.codigo);
    writeln('ingrese monto del producto comprado');
    readln(nue^.ventas.producto.monto);
    nue^.sig:=L;
    L:=nue;
    writeln('ingrese el nombre del cliente (zzz para terminar)');
    readln(nue^.ventas.cliente);
  end;
end;
procedure recorrerlista (L:Lista);
begin
  while (L<>NIL)do begin
    writeln ('cliente: ',L^.ventas.cliente);
    writeln('el monto total de compra es de:', L^.ventas.producto.cantcomprada*L^.ventas.producto.monto);
  end;
end;


var v: vector; codigo: cadenacodigo; N:string;
begin
  N:=' ';
  Leerprodpromocion(v);
  writeln ('ingrese un codigo de un producto para saber 
   que producto es (si el producto no existe, retorna ' ') ');
  readln(codigo);
  Nombre(v,codigo,N);
  writeln('ingrese un codigo de producto para saber si existe');
  readln(codigo);
  if (existe(v,codigo,N)=true) then writeln ('el codigo del producto si existe')
                               else writeln ('el codigo del producto no existe');


...........................   
  
    
  
  

