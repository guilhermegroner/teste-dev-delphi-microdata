unit uFrmDesafio6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmDesafio6 = class(TForm)
    btnCriarBotoes: TButton;
    procedure btnCriarBotoesClick(Sender: TObject);
  private
    FContadorBotoes: Integer;
    procedure BotaoClick(Sender: TObject);
  public
    { Public declarations }
  end;

var
  frmDesafio6: TfrmDesafio6;

implementation

{$R *.dfm}

{ TfrmDesafio6 }

procedure TfrmDesafio6.BotaoClick(Sender: TObject);
begin
begin
  ShowMessage('Você clicou no botão número ' + IntToStr((Sender as TButton).Tag));
end;
end;

procedure TfrmDesafio6.btnCriarBotoesClick(Sender: TObject);
var
  NovoBotao: TButton;
begin
  Inc(FContadorBotoes);

  NovoBotao := TButton.Create(Self);
  NovoBotao.Parent := Self;
  NovoBotao.Caption := IntToStr(FContadorBotoes);
  NovoBotao.Tag := FContadorBotoes;
  NovoBotao.Width := 100;
  NovoBotao.Height := 30;
  NovoBotao.Left := 224;
  NovoBotao.Top := 28 + (FContadorBotoes - 1) * 40;
  NovoBotao.OnClick := BotaoClick;

  NovoBotao.Show;
end;

end.
