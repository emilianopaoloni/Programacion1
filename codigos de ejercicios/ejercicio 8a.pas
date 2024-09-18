{

                            Online Pascal Compiler.
                Code, Compile, Run and Debug Pascal program online.
Write your code in this editor and press "Run" button to execute it.

}


program Hello;
  function operacion(caracter:char; n1,n2:integer):real;
  begin
   case caracter of
   '+': operacion:=n1+n2;
   '-': operacion:=n1-n2;
   '/': operacion:=n1/n2;
   '*': operacion:=n1*n2;
    else operacion:=-1;
   end;
  end;
  begin
    writeln(operacion(-,1,2));
  end.
    
 
  
    

