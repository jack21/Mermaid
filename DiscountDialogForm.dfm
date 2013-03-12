inherited FormDiscountDialog: TFormDiscountDialog
  Caption = #25240#35731#30906#35469
  ClientHeight = 200
  ClientWidth = 400
  Position = poScreenCenter
  ExplicitWidth = 406
  ExplicitHeight = 232
  PixelsPerInch = 96
  TextHeight = 23
  object Label1: TLabel [0]
    Left = 40
    Top = 40
    Width = 90
    Height = 23
    Caption = #25240#35731#37329#38989'='
  end
  object Label2: TLabel [1]
    Left = 196
    Top = 40
    Width = 161
    Height = 23
    Caption = #26159#21542#32380#32396#21015#21360#24115#21934'?'
  end
  object DiscountLabel: TLabel [2]
    Left = 136
    Top = 40
    Width = 54
    Height = 23
    AutoSize = False
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited OKButton: TButton
    Left = 176
    Top = 96
    ExplicitLeft = 176
    ExplicitTop = 96
  end
  inherited CancelButton: TButton
    Left = 280
    Top = 96
    ExplicitLeft = 280
    ExplicitTop = 96
  end
end
