
Unit unit3;

Interface

Uses 
unit1,crt,SysUtils;





{ahora tengo que ver si divide correctamente las palabras del vector y las compare con lo ingresado por el usuario
tener en cuenta que no modifique el archivo, solo los auxiliares}
Procedure cerrar_todo (Var vector_fin:t_vector_fin; Var texto:String; Var bool:Boolean);
Procedure imprimir_respuesta (Var aux:t_dato; Var texto:String; Var cont:byte);
Procedure charla ( Var texto:String; Var archivo:t_archivo; Var cont:byte);
Procedure mostrar_no_encontrado (Var cont:byte; Var cont2:Byte; Var archivo:t_archivo);
//Procedure comparar(vector_fin: t_vector_fin; Var archivo: t_archivo; Var aux: t_dato);
Procedure recorrer_posicion_archivo (Var cont2:byte; Var cont:byte);
Procedure dividir(Var aux:t_dato; Var nueva_frase:String ; Var pos_clave:byte);
Procedure comparar_palabras (Var aux:t_dato);
Function palabraDentroDeOtra(Var nueva_frase:String ; Var texto:String);

Procedure probar (Var archivo:t_archivo);

Implementation

Procedure cerrar_todo (Var vector_fin:t_vector_fin; Var texto:String; Var bool:Boolean);

Var 
  i: byte;
Begin
  For i := 1 To n Do
    Begin
      If Pos(vector_fin[i], texto) > 0 Then
        Begin
          gotoxy(35,21);
          writeln('Gracias por tener esta charla conmigo, nos vemos :) ');
          gotoxy(35,26);
          bool := True;
          readkey;
        End;
    End;
End;

Procedure imprimir_respuesta (Var aux:t_dato; Var texto:String; Var cont:byte);

Var 
  j: byte;
Begin
  For j := 1 To n Do
    Begin
      If Pos(aux.clave[j], texto) > 0 Then
        Begin
          gotoxy(35,21);
          writeln(aux.res);
          cont := 0;
        End
      Else
        cont := cont + 1;
    End;
End;

Procedure charla ( Var texto:String);
Begin

  GotoXY(35,25);
  writeln('Ingrese charla');
  ClrEol;
  GotoXY(35,26);
  readln(texto);
  ClrEol;
  GotoXY(35,21);
  ClrEol;
End;

Procedure mostrar_no_encontrado (Var cont:byte; Var cont2:Byte; Var archivo:t_archivo);
Begin
  gotoxy(35,21);
  If cont2=FileSize(archivo) Then
    Begin
      gotoxy(35,21);
      writeln('lo siento pero no sabria que responderte, hablemos de otra cosa');
    End;
  cont2 := 0;
  cont := 0;
End;

Procedure recorrer_posicion_archivo (Var cont2:byte; Var cont:byte);
Begin
  If cont = n Then
    cont2 := cont2 + 1;
  cont := 0;
End;










{Procedure comparar(vector_fin: t_vector_fin; Var archivo: t_archivo; Var aux: t_dato);
Var
  cont2,cont: Byte;
  bool: Boolean;
  texto: string;
Begin
  cont2 := 0;
  bool := False;

  While Not bool Do
    Begin
      charla(texto,archivo,cont);
      While Not eof(archivo) And Not bool Do
        Begin
          cerrar_todo(vector_fin,texto,bool);
          If Not bool Then
            Begin
              Read(archivo, aux);
              imprimir_respuesta(aux,texto,cont);
              recorrer_posicion_archivo(cont2,cont);
            End;
        End;
      mostrar_no_encontrado(cont,cont2,archivo);
    End;
End; }
Function palabraDentroDeOtra(Var nueva_frase:String; Var texto: String): Boolean;
Begin
  Result := Pos(nueva_frase, texto) <> 0;
End;

Procedure dividir(Var aux: t_dato; Var nueva_frase: String; Var pos_clave: byte; texto:String);

Var 
  espacio_pos: word;
  booleana: Boolean;

Begin
  booleana := true;
  While length(aux.clave[pos_clave]) > 0 And (booleana=true) Do
    Begin
      espacio_pos := Pos(' ', aux.clave[pos_clave]);

      If espacio_pos > 0 Then
        Begin
          nueva_frase := Copy(aux.clave[pos_clave], 1, espacio_pos - 1);
          Delete(aux.clave[pos_clave], 1, espacio_pos);
        End
      Else
        Begin
          nueva_frase := aux.clave[pos_clave];
          aux.clave[pos_clave] := '';
        End;
      booleana := palabraDentroDeOtra(nueva_frase,texto);
    End;
  If booleana=true Then
    Begin
      WriteLn(aux.res);
    End;
End;

Procedure comparar_palabras(Var aux: t_dato);

Var 
  pos_clave: byte;
  nueva_frase: string;
  i: byte;
Begin
  For i := 1 To n Do
    Begin
      pos_clave := i;
      dividir(aux, nueva_frase, pos_clave);
    End;
End;

Procedure probar(Var archivo: t_archivo);

Var 
  aux: t_dato;
Begin
  reset(archivo);
  While Not eof(archivo) Do
    Begin
      read(archivo, aux);
      comparar_palabras(aux);
    End;
  readkey;
End;




End.
