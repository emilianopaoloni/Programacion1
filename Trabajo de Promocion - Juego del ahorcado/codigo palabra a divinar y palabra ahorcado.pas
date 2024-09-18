{

                            Online Pascal Compiler.
                Code, Compile, Run and Debug Pascal program online.
Write your code in this editor and press "Run" button to execute it.

}

program hello;
const palabraAhorcado= 'ahorcado';
var
  palabraAdivinar: string;
  palabraMostrada: string;
  palabraAhorcadoMostrada:string;
  letra: char;
  i,j: integer;
  acerto:boolean;
  errores:integer;
begin
  palabraAdivinar := 'auto';
  palabraMostrada := StringOfChar('-', Length(palabraAdivinar));
  palabraAhorcadoMostrada:= StringOfChar(' ', Length(palabraAhorcado));
  
  
  writeln(palabraMostrada);     // Mostrar la palabra inicialmente como guiones
  errores:=0;
  while(palabraMostrada<>'palabra')do begin
  acerto:=false;
  writeln('escriba una letra posible para la palabra');  // Adivinar una letra y actualizar la palabra mostrada
  readln(letra);
  
  for i := 1 to Length(palabraAdivinar) do
  begin
    if palabraAdivinar[i] = letra then 
    begin
       acerto:=true;                  //variable acerto verifica que la letra dicha sea de la palabra a adivinar
       palabraMostrada[i] := letra;
    end;
  end;
  
  if (acerto=false)then 
  begin
    errores:=errores+1;
    for j:=1 to errores do
      palabraAhorcadoMostrada[j]:=PalabraAhorcado[j];
  end;

  // Mostrar la palabra actualizada
  writeln(palabraMostrada);
  writeln(PalabraAhorcadoMostrada);
  end;
end.

