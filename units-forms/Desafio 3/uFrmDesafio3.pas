unit uFrmDesafio3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmDesafio3 = class(TForm)
    tmrDesafio3: TTimer;
    btnContagemRegressiva: TButton;
    lblContagem: TLabel;
    procedure btnContagemRegressivaClick(Sender: TObject);
    procedure tmrDesafio3Timer(Sender: TObject);
  private
    FContador: Integer;
  public
    { Public declarations }
  end;

var
  frmDesafio3: TfrmDesafio3;

implementation

{$R *.dfm}

procedure TfrmDesafio3.btnContagemRegressivaClick(Sender: TObject);
begin
  FContador := 10;
  lblContagem.Caption := IntToStr(FContador);
  lblContagem.Visible := True;
  tmrDesafio3.Enabled := True;
end;

procedure TfrmDesafio3.tmrDesafio3Timer(Sender: TObject);
begin
  Dec(FContador);
  lblContagem.Caption := IntToStr(FContador);

  if FContador <= 0 then
  begin
    tmrDesafio3.Enabled := False;
    ShowMessage('Tempo esgotado!');
    lblContagem.Visible := False;
  end;
end;

end.
