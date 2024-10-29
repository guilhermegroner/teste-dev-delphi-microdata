unit uProcessadorDeString;

interface

type
  TProcessadorDeString = class
  public
    class function InverterTexto(const ATexto: string): string;
    class function ContarVogais(const ATexto: string): Integer;
  end;

implementation

uses
  SysUtils,
  System.Character;

class function TProcessadorDeString.InverterTexto(const ATexto: string): string;
var
  TextoInvertido: TArray<string>;
  I: Integer;
begin
  TextoInvertido := ATexto.Split([' ']);
  Result := EmptyStr;

  for I := High(TextoInvertido) downto Low(TextoInvertido) do
  begin
    Result := Result + TextoInvertido[I];
    if I > Low(TextoInvertido) then
      Result := Result + ' ';
  end;
end;

class function TProcessadorDeString.ContarVogais(const ATexto: string): Integer;
var
  I: Integer;
  CharAtual: Char;
begin
  Result := 0;
  for I := 1 to Length(ATexto) do
  begin
    CharAtual := ATexto[I].ToLower;
    if CharInSet(CharAtual, ['a', 'e', 'i', 'o', 'u']) then
      Inc(Result);
  end;
end;

end.

