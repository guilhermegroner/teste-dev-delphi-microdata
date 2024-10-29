unit uProcessadorDeArray;

interface

type
  TProcessadorDeArray = class
  public
    class function SegundoMaiorNumero(const cArray: array of Integer): Integer;
    class function SomaDeNumerosPares(const cArray: array of Integer): Integer;
  end;

implementation

uses
  SysUtils;

class function TProcessadorDeArray.SegundoMaiorNumero(const cArray: array of Integer): Integer;
var
  MaiorNumero, SegundoMaiorNumero, I: Integer;
begin
  if Length(cArray) < 2 then
    raise Exception.Create('O array precisa ter pelo menos dois elementos.');

  MaiorNumero := Low(Integer);
  SegundoMaiorNumero := Low(Integer);

  for I := 0 to High(cArray) do
  begin
    if cArray[I] > MaiorNumero then
    begin
      SegundoMaiorNumero := MaiorNumero;
      MaiorNumero := cArray[I];
    end
    else
    if (cArray[I] > SegundoMaiorNumero) and (cArray[I] < MaiorNumero) then
    begin
      SegundoMaiorNumero := cArray[I];
    end;
  end;

  Result := SegundoMaiorNumero;
end;

class function TProcessadorDeArray.SomaDeNumerosPares(const cArray: array of Integer): Integer;
var
  Soma: Integer;
  I: Integer;
begin
  Soma := 0;

  for I := 0 to High(cArray) do
  begin
    if cArray[I] mod 2 = 0 then
      Inc(Soma, cArray[I]);
  end;

  Result := Soma;
end;

end.

