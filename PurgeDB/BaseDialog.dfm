object FormBaseDialog: TFormBaseDialog
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'FormBaseDialog'
  ClientHeight = 226
  ClientWidth = 454
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 23
  object OKButton: TButton
    Left = 128
    Top = 136
    Width = 83
    Height = 65
    Caption = #30906#23450
    ImageIndex = 0
    Images = DM.ImageList
    ModalResult = 1
    TabOrder = 0
  end
  object CancelButton: TButton
    Left = 232
    Top = 136
    Width = 83
    Height = 65
    Caption = #21462#28040
    ImageIndex = 1
    Images = DM.ImageList
    ModalResult = 2
    TabOrder = 1
  end
end
