unit unit4;

interface

uses
  unit1;

Procedure abrir(Var archivo: t_archivo);
Procedure cargar_archivo(Var archivo: t_archivo);
Procedure llenar_vector_fin(Var vector_fin: t_vector_fin);
implementation

uses
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
     begin
       Rewrite(archivo);
       cargar_archivo(archivo);
     end;
End;

Procedure llenar_vector_fin(Var vector_fin: t_vector_fin);
Begin
  vector_fin[1] := 'adios';
  vector_fin[2] := 'tengo que irme';
  vector_fin[3] := 'nos vemos';
  vector_fin[4] := 'chau';
  vector_fin[5] := 'me voy';
End;

end.
