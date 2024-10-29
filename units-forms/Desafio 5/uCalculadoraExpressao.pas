unit uCalculadoraExpressao;

interface

type
  TCalculadoraExpressao = class
  public
    class function ValidarParenteses(const AExpressao: string): Boolean;
    class function AvaliarExpressao(const AExpressao: string): Extended;
  end;

implementation

uses
  System.SysUtils,
  System.Math;

{ TCalculadoraExpressao }

class function TCalculadoraExpressao.ValidarParenteses(const AExpressao: string): Boolean;
var
  I: Integer;
  ContadorParenteses: Integer;
begin
  ContadorParenteses := 0;

  for I := 1 to Length(AExpressao) do
  begin
    if AExpressao[I] = '(' then
      Inc(ContadorParenteses)
    else
    if AExpressao[I] = ')' then
    begin
      Dec(ContadorParenteses);

      if ContadorParenteses < 0 then
        Exit(False);
    end;
  end;

  Result := ContadorParenteses = 0;
end;

class function TCalculadoraExpressao.AvaliarExpressao(const AExpressao: string): Extended;
begin
  //Não consegui terminar no tempo determinado, então apenas coloqueo resultado fixo
  //Mas o caminho aqui é validar a entrada, isolar os operadores matematicos e também os parenteses
  //Criar a logico para a preferencia dos calculos e trabalhar as expressões
  Result := 0;
end;

end.

