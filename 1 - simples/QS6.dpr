program QS6;

uses
  SysUtils,
  uISubstitui in 'uISubstitui.pas',
  uSubstitui in 'uSubstitui.pas';

{$R *.RES}
{$APPTYPE CONSOLE}
var
  txtOriginal: String;
  nSubstitui: iSubstitui;
begin
  Writeln('Texto original: ?O rato roeu a roupa do rei de roma?');
  txtOriginal := 'O rato roeu a roupa do rei de roma';

  nSubstitui := TSubstitui.Create;
  Writeln('Texto alterado: ');
  Writeln(nSubstitui.Substituir(txtOriginal,'ro','teste'));

  WriteLn('Enter para sair');
  ReadLn;
end.

