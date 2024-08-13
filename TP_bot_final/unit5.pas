
Unit unit5;

Interface

Uses 
crt, unit1, unit2,unit3, unit4;

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
  //abrir(archivo);
  assign(archivo,ruta);
  rewrite(archivo);
  cargar_archivo(archivo);
  {dath_vader;
  cuadro_vader; }
  //comparar(vector_fin, archivo, aux);
  buscar(archivo, vector_fin);
  probar (archivo);
  Close(archivo);
End;

End.
