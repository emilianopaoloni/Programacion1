program tpUltimo;
uses crt;

const
   CONST_AHORCADO = 'AHORCADO';
   MAX_ARCHIVOS='5';
   MAX_CATE=5;

type
  jugador=record
    nombre:string;
    puntos:integer;
    end;

  rango=1..100;
  conjunto = set of rango;
  vectorConj=array [1..MAX_CATE]of conjunto;

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

procedure inicializarConjuntos (var v:vectorConj);
var i:integer;
begin
 for i:= 1 to MAX_CATE do
 v[i]:=[];
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

procedure asignarCantPalabras(var v:cantPalabras; p:palabras);
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

{procedure verificar (letra:char; v:letras);
 begin
   if (not v[letra]) then begin
     v[letra]:= true;
    end
   else
     writeln('ya se dijo la letra: ', letra);
 end;           }

procedure AgregarAdelante (var L:lista; palabra:string);
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

procedure pedirLetra (var letra:char);
Begin
  gotoxy(3,9);
  writeln('Ingrese una letra: ');
  gotoxy(3,11);
  writeln(' ');
  gotoxy(3,11);
  readln (letra);
end;

procedure sumarError (var errores:string);
var  i:integer;
begin
  i:= length(errores)+1;
  errores:= errores + CONST_AHORCADO[i] ;
  gotoxy(3,13);
  writeln('Errores: ', errores);
  end;

function PalabraValida (v:vectorConj;cate,pal:integer):boolean;
begin
  if (pal in v[cate]) then begin
     PalabraValida:=false; end
  else PalabraValida:=true;
  end;

procedure elegirPalabra (P: palabras; var palabra:string; c:nombresCategorias; v:cantPalabras ; conj:vectorConj);
var i,cate,pal:integer;
begin
  randomize;
  cate:=random(MAX_CATE)+1;
  gotoxy(3,5);
  writeln('La categoria es: ', c[cate]);
  repeat
    pal:=random(v[cate])+1;
  until (palabraValida(conj,cate,pal));
  conj[cate]:=conj[cate]+[pal];
  for i:= 1 to pal-1 do
    P[cate]:= P[cate]^.sig;
  palabra:= P[cate]^.dato;
end;

procedure  sumarPuntos (var j:jugador; errores:string);
begin
  gotoxy(3,16);
  if( length(errores)<5) then begin
  j.puntos:= j.puntos+3;
  writeln ('Sumaste 3 puntos');end
                          else begin
                          j.puntos:=j.puntos+1; writeln ('Sumaste 1 punto');
                          end;
end;


procedure Turno (var jActual:jugador; var L:letras; c:nombresCategorias; v:cantPalabras; P:palabras; var fin:boolean; conj:vectorConj);
var
 palabraAdivinar:string;
 palabraMostrada: string;
 letra: char;
 i: integer;
 acerto:boolean;
 errores:string;

 begin
  gotoxy(3,3);
  writeln('Turno de: ',jActual.nombre);
  InicializarVectorLetras(L);
  elegirPalabra(P,palabraAdivinar,c,v,conj);
  palabraMostrada := StringOfChar('-', Length(palabraAdivinar));
  gotoxy(3,7);
  writeln(palabraMostrada);
  while(palabraMostrada <> palabraAdivinar) and (errores <> CONST_AHORCADO)do begin
    acerto:=false;
    PedirLetra(letra);
    While (errores <> CONST_AHORCADO) and (L[upcase(letra)]) do begin
     gotoxy(3,15);
     writeln ('La letra ingresada ya se dijo... Intentelo otra vez');
     sumarError (errores);
     delay(3000);
     gotoxy(3,15);
     writeln('                                                     ');
     pedirLetra (letra);
     end;
    L[upcase(letra)]:=true;
    for i := 1 to Length(palabraAdivinar) do begin
      if (palabraAdivinar[i] = upcase(letra)) then begin
         acerto:=true;
         palabraMostrada[i] := upcase(letra);
      end;
      end;
    gotoxy(3,7);
    writeln(upcase(palabraMostrada));
    If (acerto=false) then begin
      sumarError(errores);
      end
    else  begin
      gotoxy(3,13);
      writeln('Errores: ',errores);
      end;
  end;
  If (length(errores)<8) then begin
    gotoxy(3,15);
    writeln ('Adivinaste la palabra');
    sumarPuntos (jActual,errores);
    delay(1000);
    gotoxy(3,18);
    writeln('Presione enter...');
    readln();
    end
  else begin
    fin:=true;
    gotoxy(3,15);
    writeln(jActual.nombre,' perdiste... La palabra era: ',palabraAdivinar);
    delay(3000);
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
A:archivos;
p:palabras;
ar1,ar2,ar3,ar4,ar5:text;
L: letras;
C: nombrescategorias;
v: cantPalabras;
fin:boolean;
Conj:vectorConj;

begin
  inicializarListas (P);
  cargarVector(P,A);
  asignarCantPalabras(V,P);
  nombrarCategorias(C);

  A['1']:=ar1;
  A['2']:=ar2;
  A['3']:=ar3;
  A['4']:=ar4;
  A['5']:=ar5;

  writeln('Escriba el nombre del jugador 1: ');
  readln(j1.nombre);
  gotoxy(1,4);
  writeln('Escriba el nombre del jugador 2: ');
  readln(j2.nombre);

  j1.puntos:=0;
  j2.puntos:=0;

  inicializarConjuntos(Conj);
  clrscr;

  repeat
    jActual:=j1;
    jAnt:=j2;
    turno(j1,L,C,V,P,fin,conj);
    clrscr;
    If (jActual.puntos<10)and (fin=false) then begin
      jAnt:=jActual;
      jActual:=j2;
      turno(j2, L, c, v, p, fin,conj);
      clrscr;
    end;
  until (jActual.puntos>=10) or (fin=true);

   If (jActual.puntos>=10) then begin
      Writeln('Felicitaciones ',jActual.nombre, '! Ganaste con ', jActual.puntos, ' puntos');end
   else begin
      Writeln('Felicitaciones ',jAnt.nombre, '! Ganaste con ', jAnt.puntos, ' puntos');end;

 readkey;
end.
