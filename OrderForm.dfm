object FormOrder: TFormOrder
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = #40670#33756
  ClientHeight = 768
  ClientWidth = 1024
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 23
  object RightPanel: TPanel
    Left = 680
    Top = 0
    Width = 344
    Height = 768
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      344
      768)
    object FoodType01Btn: TButton
      Left = 5
      Top = 5
      Width = 83
      Height = 65
      Caption = #27963#28023#39854
      TabOrder = 0
      OnMouseDown = FoodType01BtnMouseDown
    end
    object FoodType02Btn: TButton
      Left = 88
      Top = 5
      Width = 83
      Height = 65
      Caption = #29105#28818#39006
      TabOrder = 1
      OnMouseDown = FoodType02BtnMouseDown
    end
    object FoodType03Btn: TButton
      Left = 171
      Top = 5
      Width = 83
      Height = 65
      Caption = #37941#26495#39006
      TabOrder = 2
      OnMouseDown = FoodType03BtnMouseDown
    end
    object FoodType06Btn: TButton
      Left = 88
      Top = 70
      Width = 83
      Height = 65
      Caption = #39151#40629#39006
      TabOrder = 3
      OnMouseDown = FoodType06BtnMouseDown
    end
    object FoodType05Btn: TButton
      Left = 5
      Top = 70
      Width = 83
      Height = 65
      Caption = #25512#34214#26009#29702
      TabOrder = 4
      OnMouseDown = FoodType05BtnMouseDown
    end
    object FoodType04Btn: TButton
      Left = 254
      Top = 5
      Width = 83
      Height = 65
      Caption = #27833#28856#39006
      TabOrder = 5
      OnMouseDown = FoodType04BtnMouseDown
    end
    object FoodType07Btn: TButton
      Left = 171
      Top = 70
      Width = 83
      Height = 65
      Caption = #28779#37707#39006
      TabOrder = 6
      OnMouseDown = FoodType07BtnMouseDown
    end
    object FoodType08Btn: TButton
      Left = 254
      Top = 70
      Width = 83
      Height = 65
      Caption = #28271#32697#39006
      TabOrder = 7
      OnMouseDown = FoodType08BtnMouseDown
    end
    object FoodType09Btn: TButton
      Left = 5
      Top = 135
      Width = 83
      Height = 65
      Caption = #19977#26479#39006
      TabOrder = 8
      OnMouseDown = FoodType09BtnMouseDown
    end
    object FoodType10Btn: TButton
      Left = 88
      Top = 135
      Width = 83
      Height = 65
      Caption = #38738#33756#39006
      TabOrder = 9
      OnMouseDown = FoodType10BtnMouseDown
    end
    object FoodType11Btn: TButton
      Left = 171
      Top = 135
      Width = 83
      Height = 65
      Caption = #29138#28900#39006
      TabOrder = 10
      OnMouseDown = FoodType11BtnMouseDown
    end
    object FoodType12Btn: TButton
      Left = 254
      Top = 135
      Width = 83
      Height = 65
      Caption = #20301#19978#31687
      TabOrder = 11
      OnMouseDown = FoodType12BtnMouseDown
    end
    object FoodType13Btn: TButton
      Left = 5
      Top = 200
      Width = 83
      Height = 65
      Caption = #40670#24515#39006
      TabOrder = 12
      OnMouseDown = FoodType13BtnMouseDown
    end
    object FoodGrid: TDBGrid
      Left = 4
      Top = 331
      Width = 334
      Height = 431
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = FoodDataSource
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
      ParentFont = False
      TabOrder = 13
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -19
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnEnter = FoodGridEnter
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Code'
          Title.Alignment = taCenter
          Title.Caption = #20195#34399
          Width = 74
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Name'
          Title.Alignment = taCenter
          Title.Caption = #33756#21517
          Width = 228
          Visible = True
        end>
    end
    object FoodType14Btn: TButton
      Left = 88
      Top = 200
      Width = 83
      Height = 65
      Caption = #20919#30436#39006
      TabOrder = 14
      OnMouseDown = FoodType14BtnMouseDown
    end
    object FoodType70Btn: TButton
      Left = 254
      Top = 200
      Width = 83
      Height = 65
      Caption = #21512#33756#39006
      TabOrder = 15
      OnMouseDown = FoodType70BtnMouseDown
    end
    object FoodType80Btn: TButton
      Left = 5
      Top = 265
      Width = 83
      Height = 65
      Caption = #37202#27700#39006
      TabOrder = 16
      OnMouseDown = FoodType80BtnMouseDown
    end
    object FoodType90Btn: TButton
      Left = 88
      Top = 265
      Width = 83
      Height = 65
      Caption = #20854#20182#39006
      TabOrder = 17
      OnMouseDown = FoodType90BtnMouseDown
    end
    object FoodType60Btn: TButton
      Left = 171
      Top = 200
      Width = 83
      Height = 65
      Caption = #23567#33756#39006
      TabOrder = 18
      OnMouseDown = FoodType60BtnMouseDown
    end
  end
  object LeftPanel: TPanel
    Left = 0
    Top = 0
    Width = 680
    Height = 768
    Align = alClient
    BevelOuter = bvNone
    Caption = 'LeftPanel'
    TabOrder = 1
    object LeftBottomPanel: TPanel
      Left = 0
      Top = 597
      Width = 680
      Height = 171
      Align = alBottom
      TabOrder = 0
      DesignSize = (
        680
        171)
      object Label3: TLabel
        Left = 253
        Top = 115
        Width = 45
        Height = 23
        Anchors = [akLeft, akBottom]
        Caption = #20154#25976':'
      end
      object ClockLabel: TLabel
        Left = 8
        Top = 120
        Width = 119
        Height = 23
        Anchors = [akLeft, akBottom]
        Caption = #26178#38291':00:00:00'
        Transparent = True
      end
      object ExitButton: TButton
        Left = 591
        Top = 95
        Width = 83
        Height = 65
        Anchors = [akLeft, akBottom]
        Caption = #38626#38283
        Default = True
        ImageIndex = 1
        TabOrder = 0
        OnClick = ExitButtonClick
      end
      object CheckoutButton: TButton
        Left = 487
        Top = 95
        Width = 83
        Height = 65
        Anchors = [akLeft, akBottom]
        Caption = #32080#24115
        ImageIndex = 6
        TabOrder = 1
        OnClick = CheckoutButtonClick
      end
      object CustomerCountDBEdit: TDBEdit
        Left = 304
        Top = 112
        Width = 97
        Height = 31
        Anchors = [akLeft, akBottom]
        DataField = 'CustomerCount'
        DataSource = DM.FoodOrderDataSource
        TabOrder = 2
        OnMouseDown = CustomerCountDBEditMouseDown
      end
      object ChangeTableButton: TButton
        Left = 145
        Top = 95
        Width = 83
        Height = 65
        Anchors = [akLeft, akBottom]
        Caption = #25563#26700
        ImageIndex = 7
        TabOrder = 3
        OnClick = ChangeTableButtonClick
      end
      object GroupBox3: TGroupBox
        Left = 1
        Top = 1
        Width = 678
        Height = 88
        Align = alTop
        Caption = #36027#29992
        TabOrder = 4
        object Label15: TLabel
          Left = 210
          Top = 58
          Width = 76
          Height = 23
          Caption = #26381' '#21209' '#36027':'
        end
        object Label6: TLabel
          Left = 412
          Top = 30
          Width = 83
          Height = 23
          Caption = #23567#33756#36027#29992':'
        end
        object Label10: TLabel
          Left = 8
          Top = 58
          Width = 83
          Height = 23
          Caption = #20854#20182#36027#29992':'
        end
        object Label13: TLabel
          Left = 210
          Top = 30
          Width = 83
          Height = 23
          Caption = #37202#27700#36027#29992':'
        end
        object Label14: TLabel
          Left = 8
          Top = 30
          Width = 83
          Height = 23
          Caption = #39184#39135#36027#29992':'
        end
        object FoodFeeDBText: TDBText
          Left = 97
          Top = 30
          Width = 84
          Height = 23
          Alignment = taRightJustify
          Color = clInfoBk
          DataField = 'FoodFee'
          DataSource = DM.FoodOrderDataSource
          ParentColor = False
          Transparent = False
        end
        object DrinkFeeDBText: TDBText
          Left = 299
          Top = 30
          Width = 84
          Height = 23
          Alignment = taRightJustify
          Color = clInfoBk
          DataField = 'DrinkFee'
          DataSource = DM.FoodOrderDataSource
          ParentColor = False
          Transparent = False
        end
        object SideDishesDBText: TDBText
          Left = 501
          Top = 30
          Width = 84
          Height = 23
          Alignment = taRightJustify
          Color = clInfoBk
          DataField = 'SideDishesFee'
          DataSource = DM.FoodOrderDataSource
          ParentColor = False
          Transparent = False
        end
        object OtherFeeDBText: TDBText
          Left = 97
          Top = 58
          Width = 84
          Height = 23
          Alignment = taRightJustify
          Color = clInfoBk
          DataField = 'OtherFee'
          DataSource = DM.FoodOrderDataSource
          ParentColor = False
          Transparent = False
        end
        object ServiceFeeDBText: TDBText
          Left = 299
          Top = 58
          Width = 84
          Height = 23
          Alignment = taRightJustify
          Color = clInfoBk
          DataField = 'ServiceFee'
          DataSource = DM.FoodOrderDataSource
          ParentColor = False
          Transparent = False
        end
        object Label12: TLabel
          Left = 412
          Top = 58
          Width = 83
          Height = 23
          Caption = #25033#25910#37329#38989':'
        end
        object TotalFeeDBText: TDBText
          Left = 501
          Top = 58
          Width = 84
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
    end
    object LeftTopPanel: TPanel
      Left = 0
      Top = 0
      Width = 680
      Height = 217
      Align = alTop
      TabOrder = 1
      DesignSize = (
        680
        217)
      object TableNameDBText: TDBText
        Left = 8
        Top = 8
        Width = 666
        Height = 43
        Anchors = [akLeft, akTop, akRight]
        Color = clSkyBlue
        DataField = 'TableName'
        DataSource = DM.FoodOrderDataSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -29
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
        ExplicitWidth = 986
      end
      object GroupBox1: TGroupBox
        Left = 1
        Top = 50
        Width = 678
        Height = 166
        Margins.Bottom = 0
        Align = alBottom
        Caption = #33756#21517
        TabOrder = 0
        object Label1: TLabel
          Left = 12
          Top = 35
          Width = 45
          Height = 23
          Caption = #20195#34399':'
        end
        object Label2: TLabel
          Left = 135
          Top = 35
          Width = 45
          Height = 23
          Caption = #33756#21517':'
        end
        object CountLabel: TLabel
          Left = 336
          Top = 35
          Width = 45
          Height = 23
          Caption = #25976#37327':'
        end
        object DeleteButton: TButton
          Left = 578
          Top = 15
          Width = 83
          Height = 65
          Caption = #21034#38500
          ImageIndex = 3
          TabOrder = 0
          OnMouseDown = DeleteButtonMouseDown
        end
        object FoodCodeDBEdit: TDBEdit
          Left = 60
          Top = 32
          Width = 69
          Height = 31
          BiDiMode = bdLeftToRight
          DataField = 'Code'
          DataSource = FoodDataSource
          ParentBiDiMode = False
          TabOrder = 1
          OnMouseDown = FoodCodeDBEditMouseDown
        end
        object FoodNameDBEdit: TDBEdit
          Left = 186
          Top = 32
          Width = 141
          Height = 31
          DataField = 'Name'
          DataSource = FoodDataSource
          ReadOnly = True
          TabOrder = 2
        end
        object CountEdit: TEdit
          Left = 387
          Top = 32
          Width = 62
          Height = 31
          Alignment = taRightJustify
          NumbersOnly = True
          TabOrder = 3
          Text = '1'
          OnMouseDown = CountEditMouseDown
        end
        object SmallButton: TButton
          Left = 8
          Top = 86
          Width = 105
          Height = 65
          Caption = #23567
          DoubleBuffered = False
          Enabled = False
          ParentDoubleBuffered = False
          TabOrder = 4
          WordWrap = True
          OnClick = SmallButtonClick
        end
        object MiddleButton: TButton
          Left = 115
          Top = 86
          Width = 105
          Height = 65
          Caption = #20013
          DoubleBuffered = False
          Enabled = False
          ParentDoubleBuffered = False
          TabOrder = 5
          WordWrap = True
          OnClick = MiddleButtonClick
        end
        object LargeButton: TButton
          Left = 222
          Top = 86
          Width = 105
          Height = 65
          Caption = #22823
          DoubleBuffered = False
          Enabled = False
          ParentDoubleBuffered = False
          TabOrder = 6
          WordWrap = True
          OnClick = LargeButtonClick
        end
        object DiscountButton: TButton
          Left = 351
          Top = 86
          Width = 105
          Height = 65
          Caption = #25307#24453
          TabOrder = 7
          OnClick = DiscountButtonClick
        end
        object AppendButton: TButton
          Left = 578
          Top = 86
          Width = 83
          Height = 65
          Caption = #30906#23450
          ImageIndex = 0
          TabOrder = 8
          OnMouseDown = AppendButtonMouseDown
        end
        object ReturnButton: TButton
          Left = 462
          Top = 86
          Width = 105
          Height = 65
          Caption = #36864
          TabOrder = 9
          OnClick = ReturnButtonClick
        end
        object MinusButton: TButton
          Left = 462
          Top = 15
          Width = 105
          Height = 65
          Caption = #36000#38917
          TabOrder = 10
          Visible = False
          OnMouseDown = MinusButtonMouseDown
        end
      end
    end
    object OrderItemGrid: TDBGrid
      Left = 0
      Top = 217
      Width = 680
      Height = 380
      Margins.Top = 0
      Align = alClient
      DataSource = DM.OrderItemDataSource
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 2
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -19
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Code'
          Title.Alignment = taCenter
          Title.Caption = #20195#34399
          Width = 72
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Name'
          Title.Alignment = taCenter
          Title.Caption = #33756#21517
          Width = 209
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'UnitSizeShow'
          Title.Alignment = taCenter
          Title.Caption = #22823#23567
          Visible = False
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Count'
          Title.Alignment = taCenter
          Title.Caption = #25976#37327
          Width = 57
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Fee'
          Title.Alignment = taCenter
          Title.Caption = #21934#20729
          Width = 71
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CookingNames'
          Title.Alignment = taCenter
          Title.Caption = #20316#27861
          Width = 148
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DiscountShow'
          Title.Alignment = taCenter
          Title.Caption = #25307#24453
          Width = 51
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'IsReturnShow'
          Title.Alignment = taCenter
          Title.Caption = #36864
          Width = 29
          Visible = True
        end>
    end
  end
  object FoodDataSource: TDataSource
    DataSet = FoodDataSet
    Left = 64
    Top = 360
  end
  object FoodDataSet: TSimpleDataSet
    Aggregates = <>
    Connection = DM.GuduConnection
    DataSet.CommandText = 
      'SELECT * '#13#10'FROM Food '#13#10'WHERE Type LIKE :Type AND Code LIKE :Code' +
      '  AND IsDelete = '#39'00'#39#13#10'ORDER BY Code'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftWideString
        Name = 'Type'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'Code'
        ParamType = ptInput
      end>
    Params = <>
    AfterScroll = FoodClientDataSetAfterScroll
    Left = 64
    Top = 304
    object FoodDataSetFoodId: TIntegerField
      FieldName = 'FoodId'
      Required = True
    end
    object FoodDataSetName: TWideStringField
      FieldName = 'Name'
      Required = True
      Size = 100
    end
    object FoodDataSetType: TWideStringField
      FieldName = 'Type'
      Required = True
      Size = 2
    end
    object FoodDataSetCode: TWideStringField
      FieldName = 'Code'
      Required = True
    end
    object FoodDataSetUnit: TWideStringField
      FieldName = 'Unit'
      Required = True
      Size = 10
    end
    object FoodDataSetLarge: TIntegerField
      FieldName = 'Large'
    end
    object FoodDataSetMiddle: TIntegerField
      FieldName = 'Middle'
    end
    object FoodDataSetSmall: TIntegerField
      FieldName = 'Small'
    end
    object FoodDataSetIsDelete: TWideStringField
      FieldName = 'IsDelete'
      Required = True
      Size = 2
    end
  end
  object ItemCookingDataSet: TSimpleDataSet
    Aggregates = <>
    Connection = DM.GuduConnection
    DataSet.CommandText = 'itemcooking'
    DataSet.CommandType = ctTable
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 296
    Top = 304
  end
  object ClockTimer: TTimer
    OnTimer = ClockTimerTimer
    Left = 496
    Top = 368
  end
end
