object FormConfig: TFormConfig
  Left = 0
  Top = 0
  Caption = #35373#23450
  ClientHeight = 735
  ClientWidth = 1016
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  DesignSize = (
    1016
    735)
  PixelsPerInch = 96
  TextHeight = 23
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1016
    Height = 735
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object SystemTab: TTabSheet
      Caption = #31995#32113
      OnShow = SystemTabShow
      DesignSize = (
        1008
        697)
      object ClockLabel: TLabel
        Left = 24
        Top = 642
        Width = 119
        Height = 23
        Anchors = [akLeft, akBottom]
        Caption = #26178#38291':00:00:00'
        ExplicitTop = 675
      end
      object GroupBox1: TGroupBox
        Left = 16
        Top = 24
        Width = 361
        Height = 129
        Caption = #26381#21209#36027
        TabOrder = 0
        object Label1: TLabel
          Left = 16
          Top = 56
          Width = 83
          Height = 23
          Caption = #26381#21209#36027'%:'
        end
        object ServiceRateEdit: TEdit
          Left = 105
          Top = 53
          Width = 121
          Height = 31
          NumbersOnly = True
          TabOrder = 0
        end
        object ConfirmButton: TButton
          Left = 254
          Top = 36
          Width = 83
          Height = 65
          Caption = #20462#25913
          ImageIndex = 0
          Images = DM.ImageList
          TabOrder = 1
          OnClick = ConfirmButtonClick
        end
      end
      object GroupBox2: TGroupBox
        Left = 408
        Top = 24
        Width = 361
        Height = 129
        Caption = #21034#38500#36039#26009
        TabOrder = 1
        object Label2: TLabel
          Left = 16
          Top = 56
          Width = 114
          Height = 23
          Caption = #21034#38500#25152#26377#36039#26009
        end
        object EraserButton: TButton
          Left = 254
          Top = 36
          Width = 83
          Height = 65
          Caption = #21034#38500
          ImageIndex = 1
          Images = DM.ImageList
          TabOrder = 0
          OnMouseDown = EraserButtonMouseDown
        end
      end
      object GroupBox3: TGroupBox
        Left = 16
        Top = 168
        Width = 361
        Height = 153
        Caption = #20027#30059#38754#38991#33394
        TabOrder = 2
        object EmptyTableColorPanel: TPanel
          Left = 34
          Top = 36
          Width = 112
          Height = 65
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Caption = #31354#26700
          Color = clGradientActiveCaption
          Ctl3D = True
          DoubleBuffered = False
          ParentBackground = False
          ParentCtl3D = False
          ParentDoubleBuffered = False
          TabOrder = 0
          OnClick = EmptyTableColorPanelClick
        end
        object TableColorPanel: TPanel
          Left = 225
          Top = 36
          Width = 112
          Height = 65
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Caption = #40845#40179#26700
          Color = clGradientActiveCaption
          Ctl3D = True
          DoubleBuffered = False
          ParentBackground = False
          ParentCtl3D = False
          ParentDoubleBuffered = False
          TabOrder = 1
          OnClick = TableColorPanelClick
        end
      end
      object GroupBox4: TGroupBox
        Left = 408
        Top = 168
        Width = 361
        Height = 233
        Caption = #30332#31080#25260#38957
        TabOrder = 3
        object Label3: TLabel
          Left = 3
          Top = 32
          Width = 358
          Height = 23
          Caption = #8251#26368#22810'3'#34892#12289#27599#34892#26368#22810'34'#20491#23383'('#20013#25991#31639'2'#20491#23383')'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object ReceiptTitleMemo: TMemo
          Left = 16
          Top = 61
          Width = 321
          Height = 76
          Lines.Strings = (
            #22221#37117#22283#38555#23476#26371#39184#24307
            #32232#34399':12345678 TEL:02-22675168'
            #21488#21271#32291#22303#22478#24066#20013#33775#36335'283 '#34399)
          TabOrder = 0
          OnKeyPress = ReceiptTitleMemoKeyPress
        end
        object ReceiptTitleButton: TButton
          Left = 254
          Top = 151
          Width = 83
          Height = 65
          Caption = #20462#25913
          ImageIndex = 0
          Images = DM.ImageList
          TabOrder = 1
          OnClick = ReceiptTitleButtonClick
        end
      end
    end
    object MenuTab: TTabSheet
      Caption = #33756#21934
      ImageIndex = 1
      OnShow = MenuTabShow
      DesignSize = (
        1008
        697)
      object FoodType02Btn: TButton
        Left = 94
        Top = 16
        Width = 83
        Height = 65
        Caption = #29105#28818#39006
        TabOrder = 0
        OnClick = FoodType02BtnClick
      end
      object FoodType03Btn: TButton
        Left = 184
        Top = 16
        Width = 83
        Height = 65
        Caption = #37941#26495#39006
        TabOrder = 1
        OnClick = FoodType03BtnClick
      end
      object FoodType06Btn: TButton
        Left = 454
        Top = 16
        Width = 83
        Height = 65
        Caption = #39151#40629#39006
        TabOrder = 2
        OnClick = FoodType06BtnClick
      end
      object FoodType05Btn: TButton
        Left = 363
        Top = 16
        Width = 83
        Height = 65
        Caption = #25512#34214#26009#29702
        TabOrder = 3
        OnClick = FoodType05BtnClick
      end
      object FoodType04Btn: TButton
        Left = 274
        Top = 16
        Width = 83
        Height = 65
        Caption = #27833#28856#39006
        TabOrder = 4
        OnClick = FoodType04BtnClick
      end
      object FoodType07Btn: TButton
        Left = 543
        Top = 16
        Width = 83
        Height = 65
        Caption = #28779#37707#39006
        TabOrder = 5
        OnClick = FoodType07BtnClick
      end
      object FoodType08Btn: TButton
        Left = 632
        Top = 16
        Width = 83
        Height = 65
        Caption = #28271#32697#39006
        TabOrder = 6
        OnClick = FoodType08BtnClick
      end
      object FoodType09Btn: TButton
        Left = 721
        Top = 16
        Width = 83
        Height = 65
        Caption = #19977#26479#39006
        TabOrder = 7
        OnClick = FoodType09BtnClick
      end
      object FoodType12Btn: TButton
        Left = 184
        Top = 87
        Width = 83
        Height = 65
        Caption = #20301#19978#31687
        TabOrder = 8
        OnClick = FoodType12BtnClick
      end
      object FoodType11Btn: TButton
        Left = 94
        Top = 87
        Width = 83
        Height = 65
        Caption = #29138#28900#39006
        TabOrder = 9
        OnClick = FoodType11BtnClick
      end
      object FoodType10Btn: TButton
        Left = 4
        Top = 87
        Width = 83
        Height = 65
        Caption = #38738#33756#39006
        TabOrder = 10
        OnClick = FoodType10BtnClick
      end
      object FoodType13Btn: TButton
        Left = 274
        Top = 87
        Width = 83
        Height = 65
        Caption = #40670#24515#39006
        TabOrder = 11
        OnClick = FoodType13BtnClick
      end
      object FoodType01Btn: TButton
        Left = 4
        Top = 16
        Width = 83
        Height = 65
        Caption = #27963#28023#39854
        TabOrder = 12
        OnClick = FoodType01BtnClick
      end
      object FoodGrid: TDBGrid
        Left = 4
        Top = 158
        Width = 995
        Height = 458
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = FoodDataSource
        Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 13
        TitleFont.Charset = DEFAULT_CHARSET
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
            Width = 84
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Name'
            Title.Alignment = taCenter
            Title.Caption = #33756#21517
            Width = 296
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Unit'
            Title.Alignment = taCenter
            Title.Caption = #21934#20301
            Width = 79
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Small'
            Title.Alignment = taCenter
            Title.Caption = #23567
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Middle'
            Title.Alignment = taCenter
            Title.Caption = #20013
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Large'
            Title.Alignment = taCenter
            Title.Caption = #22823
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PrinterNote'
            Title.Alignment = taCenter
            Title.Caption = #20986#21934#27231
            Visible = True
          end>
      end
      object InsertButton: TButton
        Left = 4
        Top = 622
        Width = 83
        Height = 65
        Anchors = [akLeft, akBottom]
        Caption = #22686#21152
        ImageIndex = 2
        Images = DM.ImageList
        TabOrder = 14
        OnClick = InsertButtonClick
      end
      object MenuPrintButton: TButton
        Left = 916
        Top = 87
        Width = 83
        Height = 65
        Anchors = [akTop, akRight]
        Caption = #21015#21360
        ImageIndex = 4
        Images = DM.ImageList
        TabOrder = 15
        OnClick = MenuPrintButtonClick
      end
      object DeleteButton: TButton
        Left = 94
        Top = 622
        Width = 83
        Height = 65
        Anchors = [akLeft, akBottom]
        Caption = #21034#38500
        ImageIndex = 3
        Images = DM.ImageList
        TabOrder = 16
        OnClick = DeleteButtonClick
      end
      object ApplyButton: TButton
        Left = 183
        Top = 622
        Width = 83
        Height = 65
        Anchors = [akLeft, akBottom]
        Caption = #30906#23450
        ImageIndex = 0
        Images = DM.ImageList
        TabOrder = 17
        OnClick = ApplyButtonClick
      end
      object FoodType14Btn: TButton
        Left = 363
        Top = 87
        Width = 83
        Height = 65
        Caption = #20919#30436#39006
        TabOrder = 18
        OnClick = FoodType14BtnClick
      end
      object FoodType70Btn: TButton
        Left = 543
        Top = 87
        Width = 83
        Height = 65
        Caption = #21512#33756#39006
        TabOrder = 19
        OnClick = FoodType70BtnClick
      end
      object FoodType80Btn: TButton
        Left = 632
        Top = 87
        Width = 83
        Height = 65
        Caption = #37202#27700#39006
        TabOrder = 20
        OnClick = FoodType80BtnClick
      end
      object FoodType90Btn: TButton
        Left = 721
        Top = 87
        Width = 83
        Height = 65
        Caption = #20854#20182#39006
        TabOrder = 21
        OnClick = FoodType90BtnClick
      end
      object FoodType60Btn: TButton
        Left = 454
        Top = 87
        Width = 83
        Height = 65
        Caption = #23567#33756#39006
        TabOrder = 22
        OnClick = FoodType60BtnClick
      end
    end
    object TabSheet1: TTabSheet
      Caption = #20316#27861
      ImageIndex = 4
      OnShow = TabSheet1Show
      DesignSize = (
        1008
        697)
      object CookingGrid: TDBGrid
        Left = 3
        Top = 14
        Width = 996
        Height = 594
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = CookingDataSource
        Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -19
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CookingName'
            Title.Alignment = taCenter
            Title.Caption = #20316#27861
            Width = 198
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PrinterNote'
            Title.Alignment = taCenter
            Title.Caption = #20986#21934#27231
            Visible = False
          end>
      end
      object ApplyCookingButton: TButton
        Left = 183
        Top = 622
        Width = 83
        Height = 65
        Anchors = [akLeft, akBottom]
        Caption = #30906#23450
        ImageIndex = 0
        Images = DM.ImageList
        TabOrder = 1
        OnClick = ApplyCookingButtonClick
      end
      object DeleteCookingButton: TButton
        Left = 94
        Top = 622
        Width = 83
        Height = 65
        Anchors = [akLeft, akBottom]
        Caption = #21034#38500
        ImageIndex = 3
        Images = DM.ImageList
        TabOrder = 2
        OnClick = DeleteCookingButtonClick
      end
      object InsertCookingButton: TButton
        Left = 4
        Top = 622
        Width = 83
        Height = 65
        Anchors = [akLeft, akBottom]
        Caption = #22686#21152
        ImageIndex = 2
        Images = DM.ImageList
        TabOrder = 3
        OnClick = InsertCookingButtonClick
      end
    end
    object EmployeeTab: TTabSheet
      Caption = #21729#24037
      ImageIndex = 2
      DesignSize = (
        1008
        697)
      object NoPrevilegeLabel: TLabel
        Left = 312
        Top = 639
        Width = 171
        Height = 23
        Anchors = [akLeft, akBottom]
        Caption = #27402#38480#19981#36275#65292#28961#27861#20351#29992
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Visible = False
        ExplicitTop = 672
      end
      object EmployeeApplyButton: TButton
        Left = 184
        Top = 519
        Width = 83
        Height = 65
        Caption = #30906#23450
        ImageIndex = 0
        Images = DM.ImageList
        TabOrder = 0
        OnClick = EmployeeApplyButtonClick
      end
      object EmployeeInsertButton: TButton
        Left = 4
        Top = 519
        Width = 83
        Height = 65
        Caption = #22686#21152
        ImageIndex = 2
        Images = DM.ImageList
        TabOrder = 1
        OnClick = EmployeeInsertButtonClick
      end
      object EmployeeDeleteButton: TButton
        Left = 94
        Top = 519
        Width = 83
        Height = 65
        Caption = #21034#38500
        ImageIndex = 3
        Images = DM.ImageList
        TabOrder = 2
        OnClick = EmployeeDeleteButtonClick
      end
      object DBGrid1: TDBGrid
        Left = -4
        Top = 3
        Width = 996
        Height = 594
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = EmployeeDataSource
        Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -19
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Name'
            Title.Alignment = taCenter
            Title.Caption = #22995#21517
            Width = 138
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'EmployeeCode'
            Title.Alignment = taCenter
            Title.Caption = #24115#34399
            Width = 108
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Password'
            Title.Alignment = taCenter
            Title.Caption = #23494#30908
            Width = 107
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Admin'
            Title.Alignment = taCenter
            Title.Caption = #35373#23450
            Width = 60
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Employee'
            Title.Alignment = taCenter
            Title.Caption = #35373#23450'('#21729#24037')'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Order'
            Title.Alignment = taCenter
            Title.Caption = #35330#21934
            Width = 60
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Checkout'
            Title.Alignment = taCenter
            Title.Caption = #32080#24115
            Width = 60
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Report'
            Title.Alignment = taCenter
            Title.Caption = #22577#34920
            Width = 60
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'MonthReport'
            Title.Alignment = taCenter
            Title.Caption = #26376#22577#34920
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Eraser'
            Title.Alignment = taCenter
            Title.Caption = #28165#38500#36039#26009
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DeleteOrder'
            Title.Alignment = taCenter
            Title.Caption = #21034#38500#33756#21934
            Visible = True
          end>
      end
      object InsertEmployeeButton: TButton
        Left = 4
        Top = 622
        Width = 83
        Height = 65
        Anchors = [akLeft, akBottom]
        Caption = #22686#21152
        ImageIndex = 2
        Images = DM.ImageList
        TabOrder = 4
        OnClick = InsertEmployeeButtonClick
      end
      object DelEmployeeButton: TButton
        Left = 94
        Top = 622
        Width = 83
        Height = 65
        Anchors = [akLeft, akBottom]
        Caption = #21034#38500
        ImageIndex = 3
        Images = DM.ImageList
        TabOrder = 5
        OnClick = DelEmployeeButtonClick
      end
      object ApplyEmployeeButton: TButton
        Left = 183
        Top = 622
        Width = 83
        Height = 65
        Anchors = [akLeft, akBottom]
        Caption = #30906#23450
        ImageIndex = 0
        Images = DM.ImageList
        TabOrder = 6
        OnClick = ApplyEmployeeButtonClick
      end
    end
    object TableSheet: TTabSheet
      Caption = #26700#34399
      ImageIndex = 3
      OnShow = TableSheetShow
      object TablePanel: TPanel
        Left = 0
        Top = 0
        Width = 1008
        Height = 608
        Align = alTop
        Anchors = [akLeft, akTop, akRight, akBottom]
        BevelOuter = bvNone
        Caption = 'TablePanel'
        TabOrder = 0
        OnResize = TablePanelResize
        object TableGrid: TStringGrid
          Left = 0
          Top = 0
          Width = 1008
          Height = 608
          Align = alClient
          ColCount = 11
          DoubleBuffered = True
          FixedCols = 0
          RowCount = 11
          FixedRows = 0
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected]
          ParentDoubleBuffered = False
          ScrollBars = ssNone
          TabOrder = 0
          OnDrawCell = TableGridDrawCell
          OnSelectCell = TableGridSelectCell
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #20986#21934#27231
      ImageIndex = 5
      OnShow = TabSheet2Show
      DesignSize = (
        1008
        697)
      object PrinterGrid: TDBGrid
        Left = 3
        Top = 14
        Width = 996
        Height = 594
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = DM.PrinterDS
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -19
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Note'
            Title.Alignment = taCenter
            Title.Caption = #29992#36884
            Width = 347
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PrinterName'
            Title.Alignment = taCenter
            Title.Caption = #21360#34920#27231#21517#31281
            Width = 288
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Port'
            PickList.Strings = (
              'COM1'
              'COM2'
              'COM3'
              'COM4'
              'LPT1')
            Title.Alignment = taCenter
            Title.Caption = #36899#25509#22496
            Width = 100
            Visible = True
          end>
      end
      object InsertPrinterButton: TButton
        Left = 4
        Top = 622
        Width = 83
        Height = 65
        Anchors = [akLeft, akBottom]
        Caption = #22686#21152
        ImageIndex = 2
        Images = DM.ImageList
        TabOrder = 1
        OnClick = InsertPrinterButtonClick
      end
      object DeletePrinterButton: TButton
        Left = 94
        Top = 622
        Width = 83
        Height = 65
        Anchors = [akLeft, akBottom]
        Caption = #21034#38500
        ImageIndex = 3
        Images = DM.ImageList
        TabOrder = 2
        OnClick = DeletePrinterButtonClick
      end
      object ApplyPrinterButton: TButton
        Left = 183
        Top = 622
        Width = 83
        Height = 65
        Anchors = [akLeft, akBottom]
        Caption = #30906#23450
        ImageIndex = 0
        Images = DM.ImageList
        TabOrder = 3
        OnClick = ApplyPrinterButtonClick
      end
    end
  end
  object ExitButton: TButton
    Left = 920
    Top = 656
    Width = 83
    Height = 65
    Anchors = [akRight, akBottom]
    Caption = #38626#38283
    ImageIndex = 1
    Images = DM.ImageList
    ModalResult = 11
    TabOrder = 1
    OnClick = ExitButtonClick
  end
  object FoodDataSet: TSimpleDataSet
    Aggregates = <>
    Connection = DM.GuduConnection
    DataSet.CommandText = 
      'SELECT *'#13#10'FROM Food'#13#10'WHERE Type = :Type AND IsDelete = '#39'00'#39#13#10'ORD' +
      'ER BY Code'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftWideString
        Name = 'Type'
        ParamType = ptInput
      end>
    Params = <>
    AfterInsert = FoodDataSetAfterInsert
    OnCalcFields = FoodDataSetCalcFields
    Left = 448
    Top = 432
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
    object FoodDataSetPrinterNote: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'PrinterNote'
    end
  end
  object FoodDataSource: TDataSource
    DataSet = FoodDataSet
    Left = 448
    Top = 496
  end
  object EmployeeDataSource: TDataSource
    DataSet = EmployeeDataSet
    Left = 536
    Top = 496
  end
  object EmployeeDataSet: TSimpleDataSet
    Aggregates = <>
    Connection = DM.GuduConnection
    DataSet.CommandText = 
      'SELECT *'#13#10'FROM Employee'#13#10'WHERE IsDelete = '#39'00'#39#13#10'ORDER BY Employe' +
      'eCode'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    AfterInsert = EmployeeDataSetAfterInsert
    Left = 536
    Top = 432
    object EmployeeDataSetName: TWideStringField
      FieldName = 'Name'
      Required = True
      Size = 50
    end
    object EmployeeDataSetPassword: TWideStringField
      FieldName = 'Password'
      Required = True
    end
    object EmployeeDataSetAdmin: TWideStringField
      FieldName = 'Admin'
      Required = True
      Size = 2
    end
    object EmployeeDataSetOrder: TWideStringField
      FieldName = 'Order'
      Required = True
      Size = 2
    end
    object EmployeeDataSetCheckout: TWideStringField
      FieldName = 'Checkout'
      Required = True
      Size = 2
    end
    object EmployeeDataSetReport: TWideStringField
      FieldName = 'Report'
      Required = True
      Size = 2
    end
    object EmployeeDataSetEmployeeId: TIntegerField
      FieldName = 'EmployeeId'
      Required = True
    end
    object EmployeeDataSetIsDelete: TWideStringField
      FieldName = 'IsDelete'
      Required = True
      Size = 2
    end
    object EmployeeDataSetEmployeeCode: TWideStringField
      FieldName = 'EmployeeCode'
      Size = 10
    end
    object EmployeeDataSetMonthReport: TWideStringField
      FieldName = 'MonthReport'
      Required = True
      Size = 2
    end
    object EmployeeDataSetEmployee: TWideStringField
      FieldName = 'Employee'
      Required = True
      Size = 2
    end
    object EmployeeDataSetEraser: TWideStringField
      FieldName = 'Eraser'
      Required = True
      Size = 2
    end
    object EmployeeDataSetDeleteOrder: TWideStringField
      FieldName = 'DeleteOrder'
      Required = True
      Size = 2
    end
  end
  object TableDataSet: TSimpleDataSet
    Aggregates = <>
    Connection = DM.GuduConnection
    DataSet.CommandText = 'SELECT * '#13#10'FROM Tables'#13#10'WHERE IsDelete='#39'00'#39#13#10'ORDER BY Location'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 360
    Top = 432
    object TableDataSetTablesId: TIntegerField
      FieldName = 'TablesId'
      Required = True
    end
    object TableDataSetRestaurantId: TIntegerField
      FieldName = 'RestaurantId'
    end
    object TableDataSetName: TWideStringField
      FieldName = 'Name'
      Required = True
      FixedChar = True
      Size = 50
    end
    object TableDataSetLocation: TIntegerField
      FieldName = 'Location'
      Required = True
    end
    object TableDataSetIsDelete: TWideStringField
      FieldName = 'IsDelete'
      Required = True
      Size = 2
    end
  end
  object ClockTimer: TTimer
    OnTimer = ClockTimerTimer
    Left = 200
    Top = 704
  end
  object CookingDataSet: TSimpleDataSet
    Aggregates = <>
    Connection = DM.GuduConnection
    DataSet.CommandText = 'SELECT *  FROM Cooking WHERE IsDelete = '#39'00'#39
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    AfterInsert = CookingDataSetAfterInsert
    OnCalcFields = CookingDataSetCalcFields
    Left = 264
    Top = 432
    object CookingDataSetCookingId: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CookingId'
      Required = True
    end
    object CookingDataSetCookingName: TWideStringField
      FieldName = 'CookingName'
      Required = True
    end
    object CookingDataSetIsDelete: TWideStringField
      FieldName = 'IsDelete'
      Required = True
      Size = 2
    end
    object CookingDataSetPrinterNote: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'PrinterNote'
    end
  end
  object CookingDataSource: TDataSource
    DataSet = CookingDataSet
    Left = 264
    Top = 496
  end
  object ColorDialog1: TColorDialog
    Left = 80
    Top = 472
  end
  object PrinterSetupDialog: TPrinterSetupDialog
    Left = 312
    Top = 664
  end
end
