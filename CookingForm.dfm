object FormCooking: TFormCooking
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #20316#27861
  ClientHeight = 238
  ClientWidth = 585
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
    585
    238)
  PixelsPerInch = 96
  TextHeight = 23
  object Label1: TLabel
    Left = 8
    Top = 185
    Width = 152
    Height = 23
    Anchors = [akLeft, akBottom]
    Caption = #33267#23569#38656#36984#19968#31278#20316#27861
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object OKButton: TButton
    Left = 376
    Top = 165
    Width = 83
    Height = 65
    Anchors = [akRight, akBottom]
    Caption = #30906#23450
    ImageIndex = 0
    Images = DM.ImageList
    TabOrder = 0
    OnMouseDown = OKButtonMouseDown
    ExplicitLeft = 227
    ExplicitTop = 180
  end
  object CancelButton: TButton
    Left = 480
    Top = 165
    Width = 83
    Height = 65
    Anchors = [akRight, akBottom]
    Caption = #21462#28040
    ImageIndex = 1
    Images = DM.ImageList
    ModalResult = 2
    TabOrder = 1
    ExplicitLeft = 331
    ExplicitTop = 180
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 569
    Height = 145
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = #20316#27861
    TabOrder = 2
    ExplicitWidth = 420
  end
  object CookingDataSet: TSimpleDataSet
    Aggregates = <>
    Connection = DM.GuduConnection
    DataSet.CommandText = 'SELECT *  FROM Cooking WHERE IsDelete = '#39'00'#39
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 64
    Top = 8
  end
end
