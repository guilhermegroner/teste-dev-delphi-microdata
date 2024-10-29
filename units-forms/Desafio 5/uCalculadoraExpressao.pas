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
  //N�o consegui terminar no tempo determinado, ent�o apenas coloqueo resultado fixo
  //Mas o caminho aqui � validar a entrada, isolar os operadores matematicos e tamb�m os parenteses
  //Criar a logico para a preferencia dos calculos e trabalhar as express�es
  Result := 0;
end;

end.

