{

                            Online Pascal Compiler.
                Code, Compile, Run and Debug Pascal program online.
Write your code in this editor and press "Run" button to execute it.

}


program cuatro;
const dimf=10;
type
  vector= array[1..dimf]of char;
procedure mayusc (c:char, var cantvoc:integer, var cantcon:integer);
type 
 vocales=set of char;
 consonantes= set of char;
var voc:vocales; con:consonantes;
begin
  voc:=['a','e','i','o','u','A','E','I','O','U'];
  con:= ['a'..'z']+['A'..'Z']-voc;
  if(c IN voc) then  
    cantvoc:=cantvoc+1;
    else 
      if (c IN con) then
        cantcon:=cantcon+1;
end;
procedure analizo (c:char, var cantmayus:integer, var cantminus:integer, var cantdig:integer);
type 
  mayus=set of char; minus=set of char;
var  mayusculas:mayus; minusculas:minus;
begin
  minusculas:=['a'..'z'];
  mayusculas:=['A'..'Z'];
  if(c IN mayusculas) then
    cantmayus:= cantmayus+1;
  if(c IN minusculas) then
    cantminus:= cantminus+1;
   if(c IN [0..9]) then 
     cantdig:= cantdig+1;
end;
var v:vector; i:integer; cantvoc,cantcon,cantmayus,cantminus,cantdig:integer;
begin
  cantvoc:=0; cantcon:=0; cantmayus:=0; cantminus:=0; cantdig:=0;
  for i:= 1 to dimf do begin
  writeln('escriba un caracter');
  readln(v[i]);
  mayusc(v[i],cantvoc,cantcon);
  analizo(v[i],cantmayus,cantminus,cantdig);
  end;
  writeln('la cantidad de vocales es de ',cantvoc,' la cantidad de consonantes es de ', cantcon);
  writeln('la cantidad de mayusculas es de ',cantmayus,' la cantidad de minusculas es de ',cantminus,' la cantidad de digitos es de ',cantdig);
end.
    
 
