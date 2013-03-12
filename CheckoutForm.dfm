object FormCheckout: TFormCheckout
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = #32080#24115
  ClientHeight = 768
  ClientWidth = 1024
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  DesignSize = (
    1024
    768)
  PixelsPerInch = 96
  TextHeight = 23
  object Label16: TLabel
    Left = 981
    Top = 15
    Width = 29
    Height = 35
    Caption = #20154
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object TableNameDBText: TDBText
    Left = 16
    Top = 15
    Width = 489
    Height = 43
    Color = clSkyBlue
    DataField = 'TableName'
    DataSource = DM.FoodOrderDataSource
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = False
  end
  object CustomerCountDBText: TDBText
    Left = 856
    Top = 15
    Width = 112
    Height = 43
    Alignment = taCenter
    Color = clSkyBlue
    DataField = 'CustomerCount'
    DataSource = DM.FoodOrderDataSource
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = False
  end
  object ClockLabel: TLabel
    Left = 20
    Top = 729
    Width = 119
    Height = 23
    Anchors = [akLeft, akBottom]
    Caption = #26178#38291':00:00:00'
    Transparent = True
  end
  object GroupBox3: TGroupBox
    Left = 16
    Top = 69
    Width = 489
    Height = 332
    Caption = #36027#29992
    TabOrder = 4
    object Label12: TLabel
      Left = 44
      Top = 286
      Width = 83
      Height = 23
      Caption = #25033#25910#37329#38989':'
    end
    object Label15: TLabel
      Left = 47
      Top = 243
      Width = 76
      Height = 23
      Caption = #26381' '#21209' '#36027':'
    end
    object Label6: TLabel
      Left = 44
      Top = 158
      Width = 83
      Height = 23
      Caption = #23567#33756#36027#29992':'
    end
    object Label10: TLabel
      Left = 44
      Top = 200
      Width = 83
      Height = 23
      Caption = #20854#20182#36027#29992':'
    end
    object Label13: TLabel
      Left = 44
      Top = 115
      Width = 83
      Height = 23
      Caption = #37202#27700#36027#29992':'
    end
    object Label14: TLabel
      Left = 44
      Top = 72
      Width = 83
      Height = 23
      Caption = #39184#39135#36027#29992':'
    end
    object Label1: TLabel
      Left = 44
      Top = 30
      Width = 83
      Height = 23
      Caption = #36027#29992#32317#35336':'
    end
    object TotalPayDBText: TDBText
      Left = 158
      Top = 30
      Width = 250
      Height = 23
      Alignment = taRightJustify
      Color = clInfoBk
      DataField = 'RealFee'
      DataSource = DM.FoodOrderDataSource
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object FoodFeeDBText: TDBText
      Left = 158
      Top = 72
      Width = 250
      Height = 23
      Alignment = taRightJustify
      Color = clInfoBk
      DataField = 'FoodFee'
      DataSource = DM.FoodOrderDataSource
      ParentColor = False
      Transparent = False
    end
    object DrinkFeeDBText: TDBText
      Left = 158
      Top = 115
      Width = 250
      Height = 23
      Alignment = taRightJustify
      Color = clInfoBk
      DataField = 'DrinkFee'
      DataSource = DM.FoodOrderDataSource
      ParentColor = False
      Transparent = False
    end
    object SideDishesFeeDBText: TDBText
      Left = 158
      Top = 158
      Width = 250
      Height = 23
      Alignment = taRightJustify
      Color = clInfoBk
      DataField = 'SideDishesFee'
      DataSource = DM.FoodOrderDataSource
      ParentColor = False
      Transparent = False
    end
    object OtherFeeDBText: TDBText
      Left = 158
      Top = 200
      Width = 250
      Height = 23
      Alignment = taRightJustify
      Color = clInfoBk
      DataField = 'OtherFee'
      DataSource = DM.FoodOrderDataSource
      ParentColor = False
      Transparent = False
    end
    object ServiceFeeDBText: TDBText
      Left = 158
      Top = 243
      Width = 250
      Height = 23
      Alignment = taRightJustify
      Color = clInfoBk
      DataField = 'ServiceFee'
      DataSource = DM.FoodOrderDataSource
      ParentColor = False
      Transparent = False
    end
    object TotalFeeDBText: TDBText
      Left = 158
      Top = 286
      Width = 250
      Height = 23
      Alignment = taRightJustify
      Color = clYellow
      DataField = 'TotalFee'
      DataSource = DM.FoodOrderDataSource
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
  end
  object GroupBox1: TGroupBox
    Left = 522
    Top = 69
    Width = 488
    Height = 332
    Caption = #37329#38989#20998#37197
    TabOrder = 0
    object Label2: TLabel
      Left = 56
      Top = 51
      Width = 83
      Height = 23
      Caption = #21047#21345#37329#38989':'
    end
    object Label3: TLabel
      Left = 56
      Top = 123
      Width = 83
      Height = 23
      Caption = #29694#37329#37329#38989':'
    end
    object Label4: TLabel
      Left = 56
      Top = 194
      Width = 83
      Height = 23
      Caption = #31805#21934#37329#38989':'
    end
    object LeftPayLabel: TLabel
      Left = 159
      Top = 265
      Width = 200
      Height = 23
      AutoSize = False
      Color = clInfoBk
      ParentColor = False
      Transparent = False
    end
    object Label5: TLabel
      Left = 56
      Top = 265
      Width = 83
      Height = 23
      Caption = #21097#39192#37329#38989':'
    end
    object AllCreditCardButton: TButton
      Left = 383
      Top = 31
      Width = 83
      Height = 65
      Caption = #20840#37096#21047#21345
      TabOrder = 0
      OnClick = AllCreditCardButtonClick
    end
    object AllCashButton: TButton
      Left = 383
      Top = 103
      Width = 83
      Height = 65
      Caption = #20840#37096#29694#37329
      TabOrder = 1
      OnClick = AllCashButtonClick
    end
    object AllDebtButton: TButton
      Left = 383
      Top = 174
      Width = 83
      Height = 65
      Caption = #20840#37096#31805#21934
      TabOrder = 2
      OnClick = AllDebtButtonClick
    end
    object CustomButton: TButton
      Left = 383
      Top = 245
      Width = 83
      Height = 65
      Caption = #33258#35330
      TabOrder = 3
      OnClick = CustomButtonClick
    end
    object CreditCardPayDBEdit: TDBEdit
      Left = 159
      Top = 48
      Width = 200
      Height = 31
      BiDiMode = bdRightToLeftReadingOnly
      DataField = 'CreditCardPay'
      DataSource = DM.FoodOrderDataSource
      ParentBiDiMode = False
      TabOrder = 4
      OnExit = CreditCardPayDBEditExit
      OnMouseDown = CreditCardPayDBEditMouseDown
    end
    object CashPayDBEdit: TDBEdit
      Left = 159
      Top = 120
      Width = 200
      Height = 31
      BiDiMode = bdRightToLeftReadingOnly
      DataField = 'CashPay'
      DataSource = DM.FoodOrderDataSource
      ParentBiDiMode = False
      TabOrder = 5
      OnExit = CashPayDBEditExit
      OnMouseDown = CashPayDBEditMouseDown
    end
    object DebtPayDBEdit: TDBEdit
      Left = 159
      Top = 191
      Width = 200
      Height = 31
      BiDiMode = bdRightToLeftReadingOnly
      DataField = 'DebtPay'
      DataSource = DM.FoodOrderDataSource
      ParentBiDiMode = False
      TabOrder = 6
      OnExit = DebtPayDBEditExit
      OnMouseDown = DebtPayDBEditMouseDown
    end
  end
  object OKButton: TButton
    Left = 829
    Top = 650
    Width = 83
    Height = 63
    Caption = #32080#24115
    ImageIndex = 0
    TabOrder = 1
    OnClick = OKButtonClick
  end
  object ExitButton: TButton
    Left = 927
    Top = 650
    Width = 83
    Height = 63
    Caption = #38626#38283
    ImageIndex = 1
    TabOrder = 2
    OnClick = ExitButtonClick
  end
  object GroupBox2: TGroupBox
    Left = 16
    Top = 412
    Width = 489
    Height = 311
    Caption = #20184#27454
    TabOrder = 3
    object Label7: TLabel
      Left = 44
      Top = 115
      Width = 83
      Height = 23
      Caption = #35330#12288#12288#37329':'
    end
    object Label8: TLabel
      Left = 44
      Top = 257
      Width = 83
      Height = 23
      Caption = #23526#12288#12288#25910':'
    end
    object Label9: TLabel
      Left = 44
      Top = 186
      Width = 83
      Height = 23
      Caption = #25240#12288#12288#35731':'
    end
    object Label11: TLabel
      Left = 44
      Top = 44
      Width = 97
      Height = 23
      Caption = #26381#21209#36027'(%):'
    end
    object DepositDBEdit: TDBEdit
      Left = 158
      Top = 112
      Width = 250
      Height = 31
      DataField = 'Deposit'
      DataSource = DM.FoodOrderDataSource
      TabOrder = 0
      OnExit = DepositDBEditExit
      OnMouseDown = DepositDBEditMouseDown
    end
    object TotalPayDBEdit: TDBEdit
      Left = 158
      Top = 254
      Width = 250
      Height = 31
      DataField = 'TotalPay'
      DataSource = DM.FoodOrderDataSource
      TabOrder = 1
      OnExit = TotalPayDBEditExit
      OnMouseDown = TotalPayDBEditMouseDown
    end
    object DiscountDBEdit: TDBEdit
      Left = 158
      Top = 183
      Width = 250
      Height = 31
      DataField = 'Discount'
      DataSource = DM.FoodOrderDataSource
      TabOrder = 2
      OnExit = DiscountDBEditExit
      OnMouseDown = DiscountDBEditMouseDown
    end
    object ServiceRateZeroButton: TButton
      Left = 325
      Top = -5
      Width = 83
      Height = 65
      Caption = #27512'0'
      TabOrder = 3
      Visible = False
      OnClick = ServiceRateZeroButtonClick
    end
    object ServiceRateDefaultButton: TButton
      Left = 403
      Top = -5
      Width = 83
      Height = 65
      Caption = #38928#35373
      TabOrder = 4
      Visible = False
      OnClick = ServiceRateDefaultButtonClick
    end
    object ServiceRateEdit: TDBEdit
      Left = 158
      Top = 41
      Width = 250
      Height = 31
      AutoSize = False
      DataField = 'ServiceRate'
      DataSource = DM.FoodOrderDataSource
      TabOrder = 5
      OnExit = ServiceRateEditExit
      OnMouseDown = ServiceRateEditMouseDown
    end
    object DiscountZeroButton: TButton
      Left = 417
      Top = 166
      Width = 83
      Height = 65
      Caption = #27512'0'
      TabOrder = 6
      Visible = False
      OnClick = DiscountZeroButtonClick
    end
  end
  object KeyPanel: TPanel
    Left = 522
    Top = 412
    Width = 279
    Height = 311
    Align = alCustom
    TabOrder = 5
    object Button0: TButton
      Left = 6
      Top = 237
      Width = 83
      Height = 65
      Caption = '0'
      TabOrder = 0
      OnMouseDown = Button0MouseDown
    end
    object BackButton: TButton
      Left = 184
      Top = 237
      Width = 83
      Height = 65
      Caption = #30906#23450
      ImageIndex = 0
      TabOrder = 1
      OnMouseDown = BackButtonMouseDown
    end
    object Button9: TButton
      Left = 184
      Top = 161
      Width = 83
      Height = 65
      Caption = '9'
      TabOrder = 2
      OnMouseDown = Button9MouseDown
    end
    object Button8: TButton
      Left = 95
      Top = 161
      Width = 83
      Height = 65
      Caption = '8'
      TabOrder = 3
      OnMouseDown = Button8MouseDown
    end
    object Button7: TButton
      Left = 6
      Top = 161
      Width = 83
      Height = 65
      Caption = '7'
      TabOrder = 4
      OnMouseDown = Button7MouseDown
    end
    object Button4: TButton
      Left = 6
      Top = 86
      Width = 83
      Height = 65
      Caption = '4'
      TabOrder = 5
      OnMouseDown = Button4MouseDown
    end
    object Button5: TButton
      Left = 95
      Top = 86
      Width = 83
      Height = 65
      Caption = '5'
      TabOrder = 6
      OnMouseDown = Button5MouseDown
    end
    object Button6: TButton
      Left = 184
      Top = 86
      Width = 83
      Height = 65
      Caption = '6'
      TabOrder = 7
      OnMouseDown = Button6MouseDown
    end
    object Button3: TButton
      Left = 184
      Top = 11
      Width = 83
      Height = 65
      Caption = '3'
      TabOrder = 8
      OnMouseDown = Button3MouseDown
    end
    object Button2: TButton
      Left = 95
      Top = 11
      Width = 83
      Height = 65
      Caption = '2'
      TabOrder = 9
      OnMouseDown = Button2MouseDown
    end
    object Button1: TButton
      Left = 6
      Top = 11
      Width = 83
      Height = 65
      Caption = '1'
      TabOrder = 10
      OnMouseDown = Button1MouseDown
    end
    object CancelButton: TButton
      Left = 95
      Top = 237
      Width = 83
      Height = 65
      Caption = #21462#28040
      ImageIndex = 1
      TabOrder = 11
      OnMouseDown = CancelButtonMouseDown
    end
  end
  object PrintBillButton: TButton
    Left = 829
    Top = 574
    Width = 181
    Height = 63
    Caption = #21015#21360#24115#21934
    ImageIndex = 4
    TabOrder = 6
    OnMouseDown = PrintBillButtonMouseDown
  end
  object PrintReceiptButton: TButton
    Left = 829
    Top = 499
    Width = 181
    Height = 63
    Caption = #21015#21360#30332#31080
    ImageIndex = 4
    TabOrder = 7
    Visible = False
    OnMouseDown = PrintReceiptButtonMouseDown
  end
  object ClockTimer: TTimer
    OnTimer = ClockTimerTimer
    Left = 856
    Top = 528
  end
end
