
Unit unit4;

Interface

Uses 
unit1, unit3;

Procedure abrir(Var archivo: t_archivo);
//Procedure cargar_archivo(Var archivo: t_archivo);
Procedure llenar_vector_fin(Var vector_fin: t_vector_fin);
Procedure buscar (Var archivo:t_archivo; vector_fin:t_vector_fin);



Implementation

Uses 
crt;







{Procedure cargar_archivo(Var archivo: t_archivo);

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
End;}

Procedure abrir(Var archivo:t_archivo);
Begin
  assign(archivo,ruta);
  reset(archivo);

  If IOResult <> 0 Then
    Begin
      Rewrite(archivo);
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
Procedure buscar_fin (vector_fin: t_vector_fin; texto:String; Var bool1: Boolean);

Var 
  i: byte;
Begin
  For i := 1 To 5 Do
    Begin
      If (pos(vector_fin[i], texto) <> 0) Then
        writeln('me gusto tener esta charla cotigo, adios');
      bool1 := false;
    End;
End;

Procedure buscar (Var archivo:t_archivo; vector_fin:t_vector_fin);

Var 
  texto, nueva_frase: String;
  pos_clave, cont, cont2: byte;
  aux, auxi: t_dato;
  booleana,bool1: Boolean;
Begin
  bool1 := true;
  charla(texto);
  buscar_fin(vector_fin, texto, bool1);
  While Not EOF(archivo) And (bool1 = true ) Do
    Begin
      writeln('hola pepe');
      Read(archivo, auxi);
      dividir(auxi, nueva_frase, pos_clave, texto,booleana );
      If (booleana = false) Then
        Begin
          writeln('No sabria que decirte');
        End;
    End;


End;
End.
