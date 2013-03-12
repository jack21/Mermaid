object FormContractOut: TFormContractOut
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #20986#21934
  ClientHeight = 433
  ClientWidth = 740
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  DesignSize = (
    740
    433)
  PixelsPerInch = 96
  TextHeight = 23
  object CancelButton: TButton
    Left = 648
    Top = 360
    Width = 83
    Height = 65
    Anchors = [akRight, akBottom]
    Caption = #21462#28040
    ImageIndex = 1
    Images = DM.ImageList
    ModalResult = 2
    TabOrder = 0
  end
  object OKButton: TButton
    Left = 544
    Top = 360
    Width = 83
    Height = 65
    Anchors = [akRight, akBottom]
    Caption = #20986#21934
    ImageIndex = 4
    Images = DM.ImageList
    ModalResult = 1
    TabOrder = 1
    OnClick = OKButtonClick
  end
end
