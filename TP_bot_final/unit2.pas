unit unit2;

interface

uses
  crt;
Const
  y = 5;
  x = 40;
Procedure dath_vader ();
Procedure cuadro_vader ();

implementation

Procedure dath_vader ();

Begin
  gotoxy(x-1,y-1);
  writeln ('  ____________________________________');
  GotoXY (x,y);
  writeln ('|               .--.                 |' );
  gotoxy (x,y+1);
  writeln ('|         /       ||       \         |');
  gotoxy(x,y+2);
  writeln ('|        /        ||        \        |');
  gotoxy(x,y+3);
  writeln ('|        |        ||        |        |');
  gotoxy(x,y+4);
  writeln ('|        |        ||        |        |');
  gotoxy(x,y+5);
  writeln ('|        |/ ----- \/ ----- \|        |');
  gotoxy(x,y+6);
  writeln ('|       /  (     )  (     )  \       |');
  gotoxy(x,y+7);
  writeln ('|      / \  ----- () -----  / \      |');
  gotoxy(x,y+8);
  writeln ('|     /   \      /||\      /   \     |');
  gotoxy(x,y+9);
  writeln ('|    /     \    /||||\    /     \    |');
  gotoxy(x,y+10);
  writeln ('|   /       \  /||||||\  /       \   |');
  gotoxy(x,y+11);
  writeln ('|  /_        \o========o/        _\  |');
  gotoxy(x,y+12);
  writeln ('|      --..._  |-.  .-|_...--        |');
  gotoxy(x,y+13);
  writeln ('|             |        |             |');
  gotoxy(x,y+14);
  writeln ('| ___________________________________|');
End;

Procedure cuadro_vader ();
Begin
  GotoXY (35,21);
  writeln ('Bienvenido al chatBot de cine, auspiciado por Darth Vader');
  GotoXY(35,25);
end;
end.
