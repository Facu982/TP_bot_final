unit unit5;

interface

uses
  crt, unit1,unit2,unit3,unit4;

procedure EjecutarChatBotCine;

implementation

procedure EjecutarChatBotCine;
var
  aux: t_dato;
  vector_fin: t_vector_fin;
  archivo: t_archivo;

  texto:string;

begin
  llenar_vector_fin(vector_fin);
  //abrir(archivo);
  assign(archivo,ruta);
  rewrite(archivo);
  cargar_archivo(archivo);
  {dath_vader;
  cuadro_vader; }
  //comparar(vector_fin, archivo, aux);
  probar (archivo);
  Close(archivo);
end;

end.
