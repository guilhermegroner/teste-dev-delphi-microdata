object frmMain: TfrmMain
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = '.: Desafios Microdata'
  ClientHeight = 455
  ClientWidth = 819
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mmPrincipal
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Acoes: TActionList
    Left = 536
    Top = 24
    object actDesafio1: TAction
      Category = 'Desafio Microdata'
      Caption = 'Desafio 1'
      OnExecute = actDesafio1Execute
    end
    object actDesafio2: TAction
      Category = 'Desafio Microdata'
      Caption = 'Desafio 2'
      OnExecute = actDesafio2Execute
    end
    object actDesafio3: TAction
      Category = 'Desafio Microdata'
      Caption = 'Desafio 3'
      OnExecute = actDesafio3Execute
    end
    object actDesafio4: TAction
      Category = 'Desafio Microdata'
      Caption = 'Desafio 4'
      OnExecute = actDesafio4Execute
    end
    object actDesafio5: TAction
      Category = 'Desafio Microdata'
      Caption = 'Desafio 5'
      OnExecute = actDesafio5Execute
    end
    object actDesafio6: TAction
      Category = 'Desafio Microdata'
      Caption = 'Desafio 6'
      OnExecute = actDesafio6Execute
    end
  end
  object mmPrincipal: TMainMenu
    Left = 480
    Top = 24
    object actDesafio11: TMenuItem
      Action = actDesafio1
    end
    object Desafio21: TMenuItem
      Action = actDesafio2
    end
    object Desafio31: TMenuItem
      Action = actDesafio3
    end
    object Desafio41: TMenuItem
      Action = actDesafio4
    end
    object Desafio51: TMenuItem
      Action = actDesafio5
    end
    object Desafio61: TMenuItem
      Action = actDesafio6
    end
  end
end
