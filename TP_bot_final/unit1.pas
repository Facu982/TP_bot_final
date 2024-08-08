unit unit1;

interface

Const
  ruta = './archivo.dat';
  n = 2;

type
  t_vector_fin = array[1..n] Of string[100];

  t_dato = Record
    clave: array [1..n] Of string[100];
    res: string[100];
  End;

  t_archivo = file Of t_dato;
implementation

end.
