unit uSubstitui;

interface

uses
  uISubstitui;

type
  TSubstitui = class(TInterfacedObject, ISubstitui)
  public
    function Substituir(Str, Velho, Novo: String): String;
    constructor Create;
    destructor Destroy; Override;
  end;

implementation

{ TSubstitui }

constructor TSubstitui.Create;
begin
  inherited Create;
end;

destructor TSubstitui.Destroy;
begin
  inherited;
end;

function TSubstitui.Substituir(Str, Velho, Novo: string): string;
var
  txtNovo, txtInicio, txtFim: String;
  tamanhoTexto, tamanhoTextoAntigo, indice: Integer;
begin
  txtNovo := '';
  while indice <> 0 do
   begin
    tamanhoTextoAntigo := Length(Velho);
    tamanhoTexto := Length(Str);
    indice := Pos(Velho, Str);
    if indice <> 0 then
    begin
      txtInicio := Copy(Str, 0, indice - 1);
      txtFim := Copy(Str, indice + tamanhoTextoAntigo, tamanhoTexto);
      txtNovo := txtInicio + Novo + txtFim;
      Str := txtNovo; 
    end;
  end;
  Result := Str;
end;

end.
