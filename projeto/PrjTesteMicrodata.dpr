program PrjTesteMicrodata;

uses
  Vcl.Forms,
  uFrmMain in '..\units-forms\uFrmMain.pas' {frmMain},
  uProcessadorDeArray in '..\units-forms\Desafio 1\uProcessadorDeArray.pas',
  uProcessadorDeString in '..\units-forms\Desafio 2\uProcessadorDeString.pas',
  uFrmDesafio3 in '..\units-forms\Desafio 3\uFrmDesafio3.pas' {frmDesafio3},
  uPessoa in '..\units-forms\Desafio 4\uPessoa.pas',
  uCalculadoraExpressao in '..\units-forms\Desafio 5\uCalculadoraExpressao.pas',
  uFrmDesafio6 in '..\units-forms\Desafio 6\uFrmDesafio6.pas' {frmDesafio6};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
