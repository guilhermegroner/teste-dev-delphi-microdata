object frmDesafio3: TfrmDesafio3
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Desafio 3'
  ClientHeight = 216
  ClientWidth = 381
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lblContagem: TLabel
    Left = 175
    Top = 8
    Width = 76
    Height = 17
    Caption = 'lblContagem'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object btnContagemRegressiva: TButton
    Left = 128
    Top = 64
    Width = 123
    Height = 65
    Hint = '10 segundos'
    Caption = 'Contagem Regressiva'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnClick = btnContagemRegressivaClick
  end
  object tmrDesafio3: TTimer
    Enabled = False
    OnTimer = tmrDesafio3Timer
    Left = 48
    Top = 32
  end
end
