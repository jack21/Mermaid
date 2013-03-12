object FormMain: TFormMain
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #28165#38500#36039#26009
  ClientHeight = 415
  ClientWidth = 878
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  DesignSize = (
    878
    415)
  PixelsPerInch = 96
  TextHeight = 23
  object AlertLabel: TLabel
    Left = 8
    Top = 340
    Width = 351
    Height = 33
    Caption = #38283#22987#26085#26399#19981#33021#22312#32080#26463#26085#26399#20043#24460
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 414
    Height = 23
    Alignment = taCenter
    AutoSize = False
    Caption = #38283#22987#26085#26399
    Color = clGradientActiveCaption
    ParentColor = False
    Transparent = False
  end
  object Label2: TLabel
    Left = 448
    Top = 8
    Width = 414
    Height = 23
    Alignment = taCenter
    AutoSize = False
    Caption = #32080#26463#26085#26399
    Color = clGradientActiveCaption
    ParentColor = False
    Transparent = False
  end
  object StartCalendar: TMonthCalendar
    Left = 8
    Top = 32
    Width = 414
    Height = 257
    Date = 39937.007055000000000000
    TabOrder = 0
  end
  object EndCalendar: TMonthCalendar
    Left = 448
    Top = 36
    Width = 414
    Height = 253
    Date = 39937.007055011570000000
    TabOrder = 1
  end
  object PurgeButton: TButton
    Left = 675
    Top = 328
    Width = 83
    Height = 65
    Caption = #28165#38500
    ImageIndex = 0
    TabOrder = 2
    OnMouseDown = PurgeButtonMouseDown
  end
  object ExitButton: TButton
    Left = 779
    Top = 328
    Width = 83
    Height = 65
    Anchors = [akRight, akBottom]
    Caption = #38626#38283
    ImageIndex = 1
    ModalResult = 2
    TabOrder = 3
    OnClick = ExitButtonClick
  end
end
