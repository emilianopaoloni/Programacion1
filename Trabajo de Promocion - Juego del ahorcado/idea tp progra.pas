{

                            Online Pascal Compiler.
                Code, Compile, Run and Debug Pascal program online.
Write your code in this editor and press "Run" button to execute it.

}


program Hello;
begin
  writeln ('Hello World')
end.

resgistro con 5 campos (5 categorias)

en el archivo guardo las palabras separadas por categorias (los campos de cada registro)

length(palabra.1) : me dice la langitud de una palabra de la categoria 4

mandarle al proceso mostrar giuones (length(palabra.1))

procedure mostrar guiones (cant:integer)
var i:integer;
begin
  for i:= 1 to cant do 
      write('-');
end;
  
  
otra opcion: crear un vector con longitud grande e ir llenandolo por cada palabra seleccionada 
(la longitud de la palabra seria la dimension logica del vector)
de esta forma puedo ir editando el vector si es que adivinan una letra de la palabra 