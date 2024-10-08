
Unit unit5;

Interface

Uses 
crt, unit1, unit2, unit3, unit4;

Procedure EjecutarChatBotCine;

Implementation

Procedure EjecutarChatBotCine;

Var 
  aux: t_dato;
  vector_fin: t_vector_fin;
  archivo: t_archivo;

  texto: string;

Begin
  llenar_vector_fin(vector_fin);
  abrir(archivo);
  assign(archivo,ruta);
  rewrite(archivo);
  //cargar_archivo(archivo);
  dath_vader();
  cuadro_vader();
  reset(archivo);
  //el problema es el archivo, sospechamos que no entra o no escribe
  buscar(archivo, vector_fin);
  ReadKey;
  Close(archivo);
End;

End.
