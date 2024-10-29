unit uPessoa;

interface

type
  TPessoa = class
  private
    FNome: string;
    FIdade: Integer;
    function GetNome: string;
    procedure SetNome(const Value: string);
    function GetIdade: Integer;
    procedure SetIdade(const Value: Integer);
  public
    property Nome: string read GetNome write SetNome;
    property Idade: Integer read GetIdade write SetIdade;
    function ExibirInfo: string;
  end;

implementation

uses
  System.SysUtils;

{ TPessoa }

function TPessoa.GetNome: string;
begin
  Result := FNome;
end;

procedure TPessoa.SetNome(const Value: string);
begin
  FNome := Value;
end;

function TPessoa.GetIdade: Integer;
begin
  Result := FIdade;
end;

procedure TPessoa.SetIdade(const Value: Integer);
begin
  FIdade := Value;
end;

function TPessoa.ExibirInfo: string;
begin
  Result := Format('Nome: %s, Idade: %d', [FNome, FIdade]);
end;

end.

