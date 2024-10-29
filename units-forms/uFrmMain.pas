unit uFrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList, Vcl.Menus,
  Vcl.StdCtrls;

type
  TfrmMain = class(TForm)
    Acoes: TActionList;
    actDesafio1: TAction;
    mmPrincipal: TMainMenu;
    actDesafio11: TMenuItem;
    actDesafio2: TAction;
    Desafio21: TMenuItem;
    actDesafio3: TAction;
    Desafio31: TMenuItem;
    actDesafio4: TAction;
    Desafio41: TMenuItem;
    actDesafio5: TAction;
    Desafio51: TMenuItem;
    actDesafio6: TAction;
    Desafio61: TMenuItem;
    procedure actDesafio1Execute(Sender: TObject);
    procedure actDesafio2Execute(Sender: TObject);
    procedure actDesafio3Execute(Sender: TObject);
    procedure actDesafio4Execute(Sender: TObject);
    procedure actDesafio5Execute(Sender: TObject);
    procedure actDesafio6Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

uses
  uProcessadorDeArray,
  uProcessadorDeString,
  uFrmDesafio3,
  uPessoa,
  uCalculadoraExpressao,
  uFrmDesafio6;

{$R *.dfm}

procedure TfrmMain.actDesafio1Execute(Sender: TObject);
var
  Numeros: array of Integer;
begin
  try
    Numeros := [10, 3, 5, 7, 8, 6];

    ShowMessage('Segundo maior número do array = '+IntToStr(TProcessadorDeArray.SegundoMaiorNumero(Numeros)));
    ShowMessage('Soma dos números pares = '+IntToStr(TProcessadorDeArray.SomaDeNumerosPares(Numeros)));
  except
    on E: Exception do
      ShowMessage('Erro: '+E.Message);
  end;
end;

procedure TfrmMain.actDesafio2Execute(Sender: TObject);
var
  Texto: string;
begin
  try
    Texto := 'Vencendo o Desafio 2';

    ShowMessage('Texto original: '+Texto);
    ShowMessage('Texto com palavras invertidas: '+TProcessadorDeString.InverterTexto(Texto));
    ShowMessage('Quantidade de vogais: '+IntToStr(TProcessadorDeString.ContarVogais(Texto)));
  except
    on E: Exception do
      ShowMessage('Erro: '+E.Message);
  end;
end;

procedure TfrmMain.actDesafio3Execute(Sender: TObject);
var
  Form: TfrmDesafio3;
begin
  Form := TfrmDesafio3.Create(nil);
  try
    Form.ShowModal;
  finally
    Form.Free;
  end;
end;

procedure TfrmMain.actDesafio4Execute(Sender: TObject);
var
  Pessoa: TPessoa;
begin
  Pessoa := TPessoa.Create;
  try
    Pessoa.Nome := 'Guilherme';
    Pessoa.Idade := 28;

    ShowMessage(Pessoa.ExibirInfo);
  finally
    Pessoa.Free;
  end;
end;

procedure TfrmMain.actDesafio5Execute(Sender: TObject);
var
  Expressao: string;
  Resultado: Extended;
begin
  Expressao := '10 + (2 * 3)';

  if TCalculadoraExpressao.ValidarParenteses(Expressao) then
  begin
    try
      Resultado := TCalculadoraExpressao.AvaliarExpressao(Expressao);
      ShowMessage('Resultado da expressão "'+Expressao+ '" = '+FloatToStr(Resultado));
    except
      on E: Exception do
        ShowMessage('Erro: '+E.Message);
    end;
  end
  else
    ShowMessage('Expressão inválida: parênteses não definidos corretamente');
end;

procedure TfrmMain.actDesafio6Execute(Sender: TObject);
var
  Form: TfrmDesafio6;
begin
  Form := TfrmDesafio6.Create(nil);
  try
    Form.ShowModal;
  finally
    Form.Free;
  end;
end;

end.
