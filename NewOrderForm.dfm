object FormNewOrder: TFormNewOrder
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = #26032#22686#35330#21934
  ClientHeight = 218
  ClientWidth = 344
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel
    Left = 127
    Top = 40
    Width = 96
    Height = 19
    Caption = #26032#22686#35330#21934#21966#65311
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object TableLabel: TLabel
    Left = 56
    Top = 40
    Width = 65
    Height = 19
    AutoSize = False
    Caption = 'XX'#26700
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object OKButton: TButton
    Left = 144
    Top = 128
    Width = 83
    Height = 65
    Caption = #30906#23450
    ImageIndex = 0
    Images = DM.ImageList
    ModalResult = 1
    TabOrder = 0
  end
  object CancelButton: TButton
    Left = 248
    Top = 128
    Width = 83
    Height = 65
    Caption = #21462#28040
    ImageIndex = 1
    Images = DM.ImageList
    ModalResult = 2
    TabOrder = 1
  end
end