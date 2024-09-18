program trabajo;
uses crt;

const finJuego=10;
   CONST_AHORCADO = 'AHORCADO';
   MAX_ARCHIVOS='5';
   MAX_CATE=5;
type
  jugador=record
    nombre:string;
    puntos:integer;
  end;

  Lista=^nodo;
  nodo=record
    dato:string;
    sig:lista;
  end;

  archivos=array['1'..MAX_ARCHIVOS] of text;
  palabras=array [1..MAX_CATE] of lista;
  letras=array ['A'..'Z'] of boolean;
  nombrescategorias=array[1..MAX_CATE] of string;
  cantPalabras=array [1..MAX_CATE] of integer;

procedure inicializarPuntosJugadores (var j1:jugador; var j2:jugador);
begin
  j1.puntos:=0;
  j2.puntos:=0;
end;

procedure inicializarListas(var p:palabras);
 var i:Integer;
   begin
   for i:= 1 to MAX_CATE do
   p[i]:=Nil;
end;

function contarPalabras (L:lista):integer;
var cant:integer;
begin
cant:=0;
while (L<>nil) do begin
   cant:=cant + 1;
   L:=L^.sig;
end;
contarPalabras:=cant;
end;

procedure asignarCant(var v:cantPalabras; p:palabras);
var i:integer;
begin
for i:= 1 to MAX_CATE do begin
   v[i]:=contarPalabras(p[i]);
end;
 end;

procedure nombrarCategorias(var v: nombrescategorias);
begin
  v[1]:= 'conceptos de organizacion';
  v[2]:=  'algoritmos y estructuras de control';
  v[3]:= 'tipos y estructuras de datos';
  v[4]:= 'alocacion dinamica y estatica';
  v[5]:=  'eficiencia y correccion';
  end;
 procedure inicializarVectorLetras (var v :letras);
 var i:char;
 begin
   for i:= 'A' to 'Z' do
    v[i]:=false;
 end;

 procedure verificar (letra:char; v:letras);
 begin
   if (not v[letra]) then begin
     v[letra]:= true;
    end
   else
     writeln('ya se dijo la letra: ', letra);
 end;

 Procedure AgregarAdelante (var L:lista; palabra:string);
  Var nue:Lista;
  Begin
  New(nue);
  nue^.dato:=palabra;
  nue^.sig:=L;
  L:=nue;
  End;

procedure cargarVector (var P:palabras; a:archivos);
var j:integer; i:char;   linea,nombre: string;
begin
j:=1;
for i:='1' to MAX_ARCHIVOS do begin
 nombre:= 'ar'+i+'.txt';
 assign(A[i],nombre);
 reset(A[i]);
 while not EOF (A[i]) do begin
  readln(A[i],linea);
  agregarAdelante (P[j],linea);
  end;
 close(A[i]);
  j:=j+1;
end;

 end;



Procedure pedirLetra (var letra:char);
Begin
  writeln('Ingrese una letra: ');
  readln (letra);
end;

procedure sumarError (var errores:string);
var  i:integer;
begin
  i:= length(errores)+1;
  errores:= errores + CONST_AHORCADO[i] ;
  writeln('Errores: ', errores);
  end;

procedure elegirPalabra (P: palabras; var palabra:string; c:nombresCategorias; v:cantPalabras );
var i,n,j:integer;
begin
  randomize;
  n:=random(MAX_CATE)+1;
  writeln('La categoria es: ', c[n]);
  j:=random(v[n])+1;

  for i:= 1 to j-1 do
    P[n]:= P[n]^.sig;
  palabra:= P[n]^.dato
  ;
end;
procedure  sumarPuntos (var j:jugador; errores:string);
begin
  if( length(errores)<5) then begin
  j.puntos:= j.puntos+3;
  writeln ('Sumaste 3 puntos');end
                          else begin
                          j.puntos:=j.puntos+1; writeln ('Sumaste 1 punto');
                          end;
end;




procedure Turno (var jActual:jugador; var L:letras; c:nombresCategorias; v:cantPalabras; P:palabras; var fin:boolean);
var
 palabraAdivinar:string;
 palabraMostrada: string;
 letra: char;
 i,j: integer;
 acerto:boolean;
 errores:string;

 begin
  writeln();
  writeln('Turno de: ',jActual.nombre);
  writeln();
  InicializarVectorLetras(L);
  elegirPalabra(P,palabraAdivinar,c,v);
  palabraMostrada := StringOfChar('-', Length(palabraAdivinar));
  writeln(palabraMostrada);     // Mostrar la palabra inicialmente como guiones
  while(palabraMostrada<> palabraAdivinar) and (errores <> CONST_AHORCADO)do begin
    acerto:=false;
    PedirLetra(letra);
    writeln();
    While (errores <> CONST_AHORCADO) and (L[upcase(letra)]) do begin
    writeln();
     writeln ('La letra ingresada ya se dijo');
     sumarError (errores);
     pedirLetra (letra);
     end;
    L[upcase(letra)]:=true;
    for i := 1 to Length(palabraAdivinar) do
    begin
      if (palabraAdivinar[i] = upcase(letra)) then begin
         acerto:=true;                  //variable acerto verifica que la letra dicha sea de la palabra a adivinar
         palabraMostrada[i] := upcase(letra);
      end;
      end;
      writeln(upcase(palabraMostrada));
      If (acerto=false) then begin
        sumarError(errores);   end
      else  begin
      writeln('Errores: ',errores);
      writeln();
       end;
  end;
If (length(errores)<8) then begin
  writeln ('Adivinaste la palabra');
  sumarPuntos (jActual,errores);
  readln();  // esperar unos segundos
end
                       else begin
                       fin:=true;
                       writeln(jActual.nombre, 'perdio');
                       end;
  end;

Procedure recorrido ( pri : lista);         //para ver qué tiene la lista
Begin
while (pri <> NIL) do begin
writeln (pri^.dato) ;
pri:= pri^.sig
end;
end;

var
j1,j2,jActual,jAnt:jugador;

car:char;
n,num:integer;
A:archivos;
p:palabras;
ar1,ar2,ar3,ar4,ar5:text;
categorias:nombresCategorias;
L: letras;
c: nombrescategorias;
v: cantPalabras;
fin:boolean;

begin
  inicializarListas (p);
  cargarVector(p,a);
  asignarCant(v,p);
  nombrarCategorias(c);

  A['1']:=ar1;
  A['2']:=ar2;
  A['3']:=ar3;
  A['4']:=ar4;
  A['5']:=ar5;

 { recorrido(p[1]);
   recorrido(p[2]);   recorrido(p[4]);   recorrido(p[3]);  recorrido(p[5]); }

  writeln('escriba el nombre del jugador 1: ');
  readln(j1.nombre);
  writeln();
  writeln('escriba el nombre del jugador 2: ');
  readln(j2.nombre);

  inicializarPuntosJugadores(j1,j2);

                ///empieza jugando jugador1

  while(jAnt.puntos<10)and (fin=false) do begin
    turno(j1, L, c, v, p, fin);
    clrscr;
    jAnt:=j1;
    If (jAnt.puntos<10)and (fin=false) then begin
    turno(j2, L, c, v, p, fin);
    clrscr;
    jAnt:=j2;
    end;
    end;



   If (jAnt.puntos>=10) then begin
      Writeln('Felicitaciones ',jAnt.nombre, '! Ganaste con ', jAnt.puntos, ' puntos');end
   else begin
      Writeln('Felicitaciones ',jActual.nombre, '! Ganaste con ', jActual.puntos, ' puntos');end;






 //recorrido(p[4]);    ------> para ver qué tiene la lista
    {
   If jActual.nombre= j1.nombre then begin
      jActual;                           ////para cambiar de jugador
  end
  else jActual:=j1;
  end;
          }

 readkey;
end.
