inherited FormDailyFoodItem: TFormDailyFoodItem
  Caption = #36984#25799#21015#21360#38917#30446
  ClientWidth = 447
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 453
  ExplicitHeight = 257
  PixelsPerInch = 96
  TextHeight = 23
  object Label1: TLabel [0]
    Left = 16
    Top = 173
    Width = 152
    Height = 23
    Anchors = [akLeft, akBottom]
    Caption = #33267#23569#38656#36984#19968#31278#39006#21029
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  inherited OKButton: TButton
    Left = 267
    Top = 153
    Anchors = [akRight, akBottom]
    OnMouseDown = OKButtonMouseDown
    ExplicitLeft = 267
    ExplicitTop = 153
  end
  inherited CancelButton: TButton
    Left = 356
    Top = 153
    Anchors = [akRight, akBottom]
    ExplicitLeft = 356
    ExplicitTop = 153
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 431
    Height = 134
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = #20316#27861
    TabOrder = 2
  end
end
