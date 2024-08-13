
Unit unit4;

Interface

Uses 
unit1, unit3;

Procedure abrir(Var archivo: t_archivo);
Procedure cargar_archivo(Var archivo: t_archivo);
Procedure llenar_vector_fin(Var vector_fin: t_vector_fin);
Procedure buscar(archivo:t_archivo; vector_fin:t_vector_fin);


Implementation

Uses 
crt;

Procedure cargar_archivo(Var archivo: t_archivo);

Var 
  aux: t_dato;
  i, j: byte;
Begin
  For j := 1 To 2 Do
    Begin
      For i := 1 To n Do
        Begin
          writeln('Ingrese palabra clave ', i, ': ');
          readln(aux.clave[i]);
        End;
      writeln('Ingrese respuesta: ');
      readln(aux.res);
      write(archivo, aux);
      ClrScr;
    End;
  ClrScr;
End;

Procedure abrir(Var archivo:t_archivo);
Begin
  assign(archivo,ruta);
  {$I-}
  reset(archivo);
  {$I-}
  If IOResult <> 0 Then
    Begin
      Rewrite(archivo);
      cargar_archivo(archivo);
    End;
End;

Procedure llenar_vector_fin(Var vector_fin: t_vector_fin);
Begin
  vector_fin[1] := 'adios';
  vector_fin[2] := 'tengo que irme';
  vector_fin[3] := 'nos vemos';
  vector_fin[4] := 'chau';
  vector_fin[5] := 'me voy';
End;

Procedure buscar (archivo:t_archivo; vector_fin:t_vector_fin);

Var 

  texto, nueva_frase: String;
  pos_clave, cont, cont2: byte;
  aux, auxi: t_dato;
  arch: t_archivo;
Begin
  charla(texto);
  dividir(aux, nueva_frase, pos_clave, texto );
  Open(archivo, './archivo.data', fmOpenRead);
  While Not EOF(Archivo) Do
    Begin
      ReadLn(Archivo, auxi);
      //dividir(auxi, nueva_frase, pos_clave, texto );
      comparar_palabras(auxi);
      If aux=auxi Then
        Begin
          imprimir_respuesta(aux,texto,cont);
          ReadKey;
        End
      Else
        Begin
          mostrar_no_encontrados(cont,cont2,arch);
          ReadKey;
        End;


    End;


End;
End.
