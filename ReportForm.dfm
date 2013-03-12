object FormReport: TFormReport
  Left = 0
  Top = 0
  Caption = #22577#34920
  ClientHeight = 728
  ClientWidth = 1024
  Color = clBtnFace
  Constraints.MinHeight = 700
  Constraints.MinWidth = 1000
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  WindowState = wsMaximized
  OnShow = FormShow
  DesignSize = (
    1024
    728)
  PixelsPerInch = 96
  TextHeight = 23
  object ClockLabel: TLabel
    Left = 20
    Top = 689
    Width = 119
    Height = 23
    Anchors = [akLeft, akBottom]
    Caption = #26178#38291':00:00:00'
    Transparent = True
    ExplicitTop = 729
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1024
    Height = 647
    ActivePage = TabSheet3
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #26085#22577#34920
      OnShow = TabSheet1Show
      object Splitter1: TSplitter
        Left = 0
        Top = 449
        Width = 1016
        Height = 5
        Cursor = crVSplit
        Align = alBottom
        ExplicitLeft = 3
        ExplicitTop = 0
        ExplicitWidth = 285
        ExplicitHeight = 180
      end
      object Top1Panel: TPanel
        Left = 0
        Top = 0
        Width = 1016
        Height = 274
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          1016
          274)
        object CreditCardLabel: TLabel
          Left = 499
          Top = 82
          Width = 78
          Height = 23
          AutoSize = False
          Caption = 'CreditCardLabel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DebtLabel: TLabel
          Left = 499
          Top = 53
          Width = 78
          Height = 23
          AutoSize = False
          Caption = 'DebtLabel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 448
          Top = 82
          Width = 45
          Height = 23
          Caption = #21047#21345':'
        end
        object Label2: TLabel
          Left = 448
          Top = 53
          Width = 45
          Height = 23
          Caption = #31805#24115':'
        end
        object CashLabel: TLabel
          Left = 499
          Top = 24
          Width = 78
          Height = 23
          AutoSize = False
          Caption = 'CashLabel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 448
          Top = 24
          Width = 45
          Height = 23
          Caption = #29694#37329':'
        end
        object DayOrderCalendar: TMonthCalendar
          Left = 8
          Top = 3
          Width = 414
          Height = 253
          Date = 39773.240628240740000000
          DoubleBuffered = True
          ParentDoubleBuffered = False
          TabOrder = 0
          OnClick = DayOrderCalendarClick
        end
        object SearchButton: TButton
          Left = 929
          Top = 199
          Width = 83
          Height = 65
          Anchors = [akTop, akRight]
          Caption = #21934#34399
          ImageIndex = 5
          TabOrder = 1
          OnClick = SearchButtonClick
        end
        object DaySerialEdit: TEdit
          Left = 783
          Top = 216
          Width = 129
          Height = 31
          Anchors = [akTop, akRight]
          NumbersOnly = True
          TabOrder = 2
        end
        object PrintOrderButton: TButton
          Left = 929
          Top = 11
          Width = 83
          Height = 65
          Anchors = [akTop, akRight]
          Caption = #24115#21934
          ImageIndex = 4
          TabOrder = 3
          OnClick = PrintOrderButtonClick
        end
        object DailyOrderButton: TButton
          Left = 929
          Top = 105
          Width = 83
          Height = 65
          Anchors = [akTop, akRight]
          Caption = #22577#34920
          ImageIndex = 4
          TabOrder = 4
          OnClick = DailyOrderButtonClick
        end
      end
      object MiddlePanel: TPanel
        Left = 0
        Top = 274
        Width = 1016
        Height = 175
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object DayGrid: TDBGrid
          Left = 0
          Top = 0
          Width = 1016
          Height = 175
          Align = alClient
          DataSource = OrderDataSource
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
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
              FieldName = 'FoodOrderId'
              Title.Alignment = taCenter
              Title.Caption = #24115#21934#32232#34399
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'DailySerial'
              Title.Alignment = taCenter
              Title.Caption = #26085#24207#34399
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Name'
              Title.Alignment = taCenter
              Title.Caption = #26700#34399
              Width = 79
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'CustomerCount'
              Title.Alignment = taCenter
              Title.Caption = #20154#25976
              Width = 77
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'BuildTimeStr'
              Title.Alignment = taCenter
              Title.Caption = #26178#38291
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'CheckoutTimeStr'
              Title.Alignment = taCenter
              Title.Caption = #32080#24115#26178#38291
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Name_1'
              Title.Alignment = taCenter
              Title.Caption = #21729#24037
              Width = 122
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FullFoodFee'
              Title.Alignment = taCenter
              Title.Caption = #39184#39135
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FullSideDishesFee'
              Title.Alignment = taCenter
              Title.Caption = #23567#33756
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FullDrinkFee'
              Title.Alignment = taCenter
              Title.Caption = #37202#27700
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FullOtherFee'
              Title.Alignment = taCenter
              Title.Caption = #20854#20182
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ServiceFee'
              Title.Alignment = taCenter
              Title.Caption = #26381#21209#36027
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FullTotalFee'
              Title.Alignment = taCenter
              Title.Caption = #21512#35336
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CashPay'
              Title.Alignment = taCenter
              Title.Caption = #29694#37329
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Discount'
              Title.Alignment = taCenter
              Title.Caption = #25240#35731
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Deposit'
              Title.Alignment = taCenter
              Title.Caption = #35330#37329
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DebtPay'
              Title.Alignment = taCenter
              Title.Caption = #31805#24115
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CreditCardPay'
              Title.Alignment = taCenter
              Title.Caption = #21047#21345
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FullTotalPay'
              Title.Alignment = taCenter
              Title.Caption = #32317#35336
              Visible = True
            end>
        end
      end
      object BottomPanel: TPanel
        Left = 0
        Top = 454
        Width = 1016
        Height = 155
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 2
        object OrderGrid: TDBGrid
          Left = 0
          Top = 0
          Width = 1016
          Height = 155
          Align = alClient
          DataSource = OrderItemDataSource
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
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
              FieldName = 'Code'
              Title.Alignment = taCenter
              Title.Caption = #20195#34399
              Width = 101
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Name'
              Title.Alignment = taCenter
              Title.Caption = #33756#21517
              Width = 324
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'UnitSizeShow'
              Title.Alignment = taCenter
              Title.Caption = #22823#23567
              Width = 67
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Fee'
              Title.Alignment = taCenter
              Title.Caption = #21934#20729
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Count'
              Title.Alignment = taCenter
              Title.Caption = #25976#37327
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SumFee'
              Title.Alignment = taCenter
              Title.Caption = #37329#38989
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'DiscountStr'
              Title.Alignment = taCenter
              Title.Caption = #25307#24453
              Width = 71
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'IsReturnShow'
              Title.Alignment = taCenter
              Title.Caption = #36864
              Width = 68
              Visible = True
            end>
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #26085#37559#21806#22577#34920
      ImageIndex = 1
      DesignSize = (
        1016
        609)
      object PrintReportButton: TButton
        Left = 929
        Top = 11
        Width = 83
        Height = 65
        Anchors = [akTop, akRight]
        Caption = #21015#21360
        ImageIndex = 4
        TabOrder = 0
        OnClick = PrintReportButtonClick
      end
      object DaySalesCalendar: TMonthCalendar
        Left = 8
        Top = 3
        Width = 414
        Height = 253
        Date = 39773.240628333330000000
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 1
        OnClick = DaySalesCalendarClick
      end
      object DayGrid01: TStringGrid
        Left = 8
        Top = 230
        Width = 240
        Height = 100
        ColCount = 3
        Ctl3D = False
        DoubleBuffered = True
        FixedCols = 0
        RowCount = 4
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goDrawFocusSelected, goRowSelect]
        ParentCtl3D = False
        ParentDoubleBuffered = False
        ScrollBars = ssVertical
        TabOrder = 2
        OnSelectCell = StringGridSelectCell
        ColWidths = (
          40
          175
          64)
      end
      object DayGrid02: TStringGrid
        Left = 260
        Top = 230
        Width = 240
        Height = 100
        ColCount = 3
        Ctl3D = False
        DoubleBuffered = True
        FixedCols = 0
        RowCount = 4
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goDrawFocusSelected, goRowSelect]
        ParentCtl3D = False
        ParentDoubleBuffered = False
        ScrollBars = ssVertical
        TabOrder = 3
        OnSelectCell = StringGridSelectCell
        ColWidths = (
          44
          64
          64)
      end
      object DayGrid03: TStringGrid
        Left = 512
        Top = 230
        Width = 240
        Height = 100
        ColCount = 3
        Ctl3D = False
        DoubleBuffered = True
        FixedCols = 0
        RowCount = 4
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goDrawFocusSelected, goRowSelect]
        ParentCtl3D = False
        ParentDoubleBuffered = False
        ScrollBars = ssVertical
        TabOrder = 4
        OnSelectCell = StringGridSelectCell
        ColWidths = (
          215
          64
          64)
      end
      object DayGrid04: TStringGrid
        Left = 764
        Top = 230
        Width = 240
        Height = 100
        ColCount = 3
        Ctl3D = False
        DoubleBuffered = True
        FixedCols = 0
        RowCount = 4
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goDrawFocusSelected, goRowSelect]
        ParentCtl3D = False
        ParentDoubleBuffered = False
        ScrollBars = ssVertical
        TabOrder = 5
        OnSelectCell = StringGridSelectCell
        ColWidths = (
          215
          64
          64)
      end
      object DayGrid08: TStringGrid
        Left = 764
        Top = 336
        Width = 240
        Height = 100
        ColCount = 3
        Ctl3D = False
        DoubleBuffered = True
        FixedCols = 0
        RowCount = 4
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goDrawFocusSelected, goRowSelect]
        ParentCtl3D = False
        ParentDoubleBuffered = False
        ScrollBars = ssVertical
        TabOrder = 6
        OnSelectCell = StringGridSelectCell
        ColWidths = (
          215
          64
          64)
      end
      object DayGrid07: TStringGrid
        Left = 512
        Top = 336
        Width = 240
        Height = 100
        ColCount = 3
        Ctl3D = False
        DoubleBuffered = True
        FixedCols = 0
        RowCount = 4
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goDrawFocusSelected, goRowSelect]
        ParentCtl3D = False
        ParentDoubleBuffered = False
        ScrollBars = ssVertical
        TabOrder = 7
        OnSelectCell = StringGridSelectCell
        ColWidths = (
          215
          64
          64)
      end
      object DayGrid06: TStringGrid
        Left = 260
        Top = 336
        Width = 240
        Height = 100
        ColCount = 3
        Ctl3D = False
        DoubleBuffered = True
        FixedCols = 0
        RowCount = 4
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goDrawFocusSelected, goRowSelect]
        ParentCtl3D = False
        ParentDoubleBuffered = False
        ScrollBars = ssVertical
        TabOrder = 8
        OnSelectCell = StringGridSelectCell
        ColWidths = (
          215
          64
          64)
      end
      object DayGrid05: TStringGrid
        Left = 8
        Top = 336
        Width = 240
        Height = 100
        ColCount = 3
        Ctl3D = False
        DoubleBuffered = True
        FixedCols = 0
        RowCount = 4
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goDrawFocusSelected, goRowSelect]
        ParentCtl3D = False
        ParentDoubleBuffered = False
        ScrollBars = ssVertical
        TabOrder = 9
        OnSelectCell = StringGridSelectCell
        ColWidths = (
          215
          64
          64)
      end
      object DayGrid09: TStringGrid
        Left = 8
        Top = 442
        Width = 240
        Height = 100
        ColCount = 3
        Ctl3D = False
        DoubleBuffered = True
        FixedCols = 0
        RowCount = 4
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goDrawFocusSelected, goRowSelect]
        ParentCtl3D = False
        ParentDoubleBuffered = False
        ScrollBars = ssVertical
        TabOrder = 10
        OnSelectCell = StringGridSelectCell
        ColWidths = (
          215
          64
          64)
      end
      object DayGrid10: TStringGrid
        Left = 260
        Top = 442
        Width = 240
        Height = 100
        ColCount = 3
        Ctl3D = False
        DoubleBuffered = True
        FixedCols = 0
        RowCount = 4
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goDrawFocusSelected, goRowSelect]
        ParentCtl3D = False
        ParentDoubleBuffered = False
        ScrollBars = ssVertical
        TabOrder = 11
        OnSelectCell = StringGridSelectCell
        ColWidths = (
          215
          64
          64)
      end
      object DayGrid11: TStringGrid
        Left = 512
        Top = 442
        Width = 240
        Height = 100
        ColCount = 3
        Ctl3D = False
        DoubleBuffered = True
        FixedCols = 0
        RowCount = 4
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goDrawFocusSelected, goRowSelect]
        ParentCtl3D = False
        ParentDoubleBuffered = False
        ScrollBars = ssVertical
        TabOrder = 12
        OnSelectCell = StringGridSelectCell
        ColWidths = (
          215
          64
          64)
      end
      object DayGrid12: TStringGrid
        Left = 764
        Top = 442
        Width = 240
        Height = 100
        ColCount = 3
        Ctl3D = False
        DoubleBuffered = True
        FixedCols = 0
        RowCount = 4
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goDrawFocusSelected, goRowSelect]
        ParentCtl3D = False
        ParentDoubleBuffered = False
        ScrollBars = ssVertical
        TabOrder = 13
        OnSelectCell = StringGridSelectCell
        ColWidths = (
          215
          64
          64)
      end
      object DayGrid90: TStringGrid
        Left = 764
        Top = 124
        Width = 240
        Height = 100
        ColCount = 3
        Ctl3D = False
        DoubleBuffered = True
        FixedCols = 0
        RowCount = 4
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goDrawFocusSelected, goRowSelect]
        ParentCtl3D = False
        ParentDoubleBuffered = False
        ScrollBars = ssVertical
        TabOrder = 14
        OnSelectCell = StringGridSelectCell
        ColWidths = (
          215
          64
          64)
      end
      object DayGrid13: TStringGrid
        Left = 8
        Top = 548
        Width = 240
        Height = 100
        ColCount = 3
        Ctl3D = False
        DoubleBuffered = True
        FixedCols = 0
        RowCount = 4
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goDrawFocusSelected, goRowSelect]
        ParentCtl3D = False
        ParentDoubleBuffered = False
        ScrollBars = ssVertical
        TabOrder = 15
        OnSelectCell = StringGridSelectCell
        ColWidths = (
          215
          64
          64)
      end
      object DayGrid14: TStringGrid
        Left = 260
        Top = 548
        Width = 240
        Height = 100
        ColCount = 3
        Ctl3D = False
        DoubleBuffered = True
        FixedCols = 0
        RowCount = 4
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goDrawFocusSelected, goRowSelect]
        ParentCtl3D = False
        ParentDoubleBuffered = False
        ScrollBars = ssVertical
        TabOrder = 16
        OnSelectCell = StringGridSelectCell
        ColWidths = (
          215
          64
          64)
      end
      object DayGrid70: TStringGrid
        Left = 764
        Top = 548
        Width = 240
        Height = 100
        ColCount = 3
        Ctl3D = False
        DoubleBuffered = True
        FixedCols = 0
        RowCount = 4
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goDrawFocusSelected, goRowSelect]
        ParentCtl3D = False
        ParentDoubleBuffered = False
        ScrollBars = ssVertical
        TabOrder = 17
        OnSelectCell = StringGridSelectCell
        ColWidths = (
          215
          64
          64)
      end
      object DayGrid80: TStringGrid
        Left = 512
        Top = 124
        Width = 240
        Height = 100
        ColCount = 3
        Ctl3D = False
        DoubleBuffered = True
        FixedCols = 0
        RowCount = 4
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goDrawFocusSelected, goRowSelect]
        ParentCtl3D = False
        ParentDoubleBuffered = False
        ScrollBars = ssVertical
        TabOrder = 18
        OnSelectCell = StringGridSelectCell
        ColWidths = (
          215
          64
          64)
      end
      object DayGrid60: TStringGrid
        Left = 512
        Top = 548
        Width = 240
        Height = 100
        ColCount = 3
        Ctl3D = False
        DoubleBuffered = True
        FixedCols = 0
        RowCount = 4
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goDrawFocusSelected, goRowSelect]
        ParentCtl3D = False
        ParentDoubleBuffered = False
        ScrollBars = ssVertical
        TabOrder = 19
        OnSelectCell = StringGridSelectCell
        ColWidths = (
          215
          64
          64)
      end
    end
    object TabSheet3: TTabSheet
      Caption = #26376#37559#21806#22577#34920
      ImageIndex = 2
      DesignSize = (
        1016
        609)
      object MonthSalesCalendar: TMonthCalendar
        Left = 8
        Top = 3
        Width = 414
        Height = 253
        Date = 39773.240628368050000000
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 0
        OnClick = MonthSalesCalendarClick
      end
      object StringGrid01: TStringGrid
        Left = 8
        Top = 230
        Width = 240
        Height = 100
        ColCount = 3
        Ctl3D = False
        DoubleBuffered = True
        FixedCols = 0
        RowCount = 4
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goDrawFocusSelected, goRowSelect]
        ParentCtl3D = False
        ParentDoubleBuffered = False
        ScrollBars = ssVertical
        TabOrder = 1
        OnSelectCell = StringGridSelectCell
        ColWidths = (
          40
          175
          64)
      end
      object StringGrid02: TStringGrid
        Left = 260
        Top = 230
        Width = 240
        Height = 100
        ColCount = 3
        Ctl3D = False
        DoubleBuffered = True
        FixedCols = 0
        RowCount = 4
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goDrawFocusSelected, goRowSelect]
        ParentCtl3D = False
        ParentDoubleBuffered = False
        ScrollBars = ssVertical
        TabOrder = 2
        OnSelectCell = StringGridSelectCell
        ColWidths = (
          44
          64
          64)
      end
      object StringGrid03: TStringGrid
        Left = 512
        Top = 230
        Width = 240
        Height = 100
        ColCount = 3
        Ctl3D = False
        DoubleBuffered = True
        FixedCols = 0
        RowCount = 4
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goDrawFocusSelected, goRowSelect]
        ParentCtl3D = False
        ParentDoubleBuffered = False
        ScrollBars = ssVertical
        TabOrder = 3
        OnSelectCell = StringGridSelectCell
        ColWidths = (
          215
          64
          64)
      end
      object StringGrid04: TStringGrid
        Left = 764
        Top = 230
        Width = 240
        Height = 100
        ColCount = 3
        Ctl3D = False
        DoubleBuffered = True
        FixedCols = 0
        RowCount = 4
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goDrawFocusSelected, goRowSelect]
        ParentCtl3D = False
        ParentDoubleBuffered = False
        ScrollBars = ssVertical
        TabOrder = 4
        OnSelectCell = StringGridSelectCell
        ColWidths = (
          215
          64
          64)
      end
      object StringGrid11: TStringGrid
        Left = 512
        Top = 442
        Width = 240
        Height = 100
        ColCount = 3
        Ctl3D = False
        DoubleBuffered = True
        FixedCols = 0
        RowCount = 4
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goDrawFocusSelected, goRowSelect]
        ParentCtl3D = False
        ParentDoubleBuffered = False
        ScrollBars = ssVertical
        TabOrder = 5
        OnSelectCell = StringGridSelectCell
        ColWidths = (
          215
          64
          64)
      end
      object StringGrid10: TStringGrid
        Left = 260
        Top = 442
        Width = 240
        Height = 100
        ColCount = 3
        Ctl3D = False
        DoubleBuffered = True
        FixedCols = 0
        RowCount = 4
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goDrawFocusSelected, goRowSelect]
        ParentCtl3D = False
        ParentDoubleBuffered = False
        ScrollBars = ssVertical
        TabOrder = 6
        OnSelectCell = StringGridSelectCell
        ColWidths = (
          215
          64
          64)
      end
      object StringGrid09: TStringGrid
        Left = 8
        Top = 442
        Width = 240
        Height = 100
        ColCount = 3
        Ctl3D = False
        DoubleBuffered = True
        FixedCols = 0
        RowCount = 4
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goDrawFocusSelected, goRowSelect]
        ParentCtl3D = False
        ParentDoubleBuffered = False
        ScrollBars = ssVertical
        TabOrder = 7
        OnSelectCell = StringGridSelectCell
        ColWidths = (
          215
          64
          64)
      end
      object StringGrid90: TStringGrid
        Left = 764
        Top = 124
        Width = 240
        Height = 100
        ColCount = 3
        Ctl3D = False
        DoubleBuffered = True
        FixedCols = 0
        RowCount = 4
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goDrawFocusSelected, goRowSelect]
        ParentCtl3D = False
        ParentDoubleBuffered = False
        ScrollBars = ssVertical
        TabOrder = 8
        OnSelectCell = StringGridSelectCell
        ColWidths = (
          215
          64
          64)
      end
      object StringGrid08: TStringGrid
        Left = 764
        Top = 336
        Width = 240
        Height = 100
        ColCount = 3
        Ctl3D = False
        DoubleBuffered = True
        FixedCols = 0
        RowCount = 4
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goDrawFocusSelected, goRowSelect]
        ParentCtl3D = False
        ParentDoubleBuffered = False
        ScrollBars = ssVertical
        TabOrder = 9
        OnSelectCell = StringGridSelectCell
        ColWidths = (
          215
          64
          64)
      end
      object StringGrid07: TStringGrid
        Left = 512
        Top = 336
        Width = 240
        Height = 100
        ColCount = 3
        Ctl3D = False
        DoubleBuffered = True
        FixedCols = 0
        RowCount = 4
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goDrawFocusSelected, goRowSelect]
        ParentCtl3D = False
        ParentDoubleBuffered = False
        ScrollBars = ssVertical
        TabOrder = 10
        OnSelectCell = StringGridSelectCell
        ColWidths = (
          215
          64
          64)
      end
      object StringGrid06: TStringGrid
        Left = 260
        Top = 336
        Width = 240
        Height = 100
        ColCount = 3
        Ctl3D = False
        DoubleBuffered = True
        FixedCols = 0
        RowCount = 4
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goDrawFocusSelected, goRowSelect]
        ParentCtl3D = False
        ParentDoubleBuffered = False
        ScrollBars = ssVertical
        TabOrder = 11
        OnSelectCell = StringGridSelectCell
        ColWidths = (
          215
          64
          64)
      end
      object StringGrid05: TStringGrid
        Left = 8
        Top = 336
        Width = 240
        Height = 100
        ColCount = 3
        Ctl3D = False
        DoubleBuffered = True
        FixedCols = 0
        RowCount = 4
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goDrawFocusSelected, goRowSelect]
        ParentCtl3D = False
        ParentDoubleBuffered = False
        ScrollBars = ssVertical
        TabOrder = 12
        OnSelectCell = StringGridSelectCell
        ColWidths = (
          215
          64
          64)
      end
      object StringGrid12: TStringGrid
        Left = 764
        Top = 442
        Width = 240
        Height = 100
        ColCount = 3
        Ctl3D = False
        DoubleBuffered = True
        FixedCols = 0
        RowCount = 4
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goDrawFocusSelected, goRowSelect]
        ParentCtl3D = False
        ParentDoubleBuffered = False
        ScrollBars = ssVertical
        TabOrder = 13
        OnSelectCell = StringGridSelectCell
        ColWidths = (
          215
          64
          64)
      end
      object MonthSalesReportButton: TButton
        Left = 929
        Top = 11
        Width = 83
        Height = 65
        Anchors = [akTop, akRight]
        Caption = #21015#21360
        ImageIndex = 4
        TabOrder = 14
        OnClick = MonthSalesReportButtonClick
      end
      object StringGrid13: TStringGrid
        Left = 8
        Top = 548
        Width = 240
        Height = 100
        ColCount = 3
        Ctl3D = False
        DoubleBuffered = True
        FixedCols = 0
        RowCount = 4
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goDrawFocusSelected, goRowSelect]
        ParentCtl3D = False
        ParentDoubleBuffered = False
        ScrollBars = ssVertical
        TabOrder = 15
        OnSelectCell = StringGridSelectCell
        ColWidths = (
          215
          64
          64)
      end
      object StringGrid14: TStringGrid
        Left = 260
        Top = 548
        Width = 240
        Height = 100
        ColCount = 3
        Ctl3D = False
        DoubleBuffered = True
        FixedCols = 0
        RowCount = 4
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goDrawFocusSelected, goRowSelect]
        ParentCtl3D = False
        ParentDoubleBuffered = False
        ScrollBars = ssVertical
        TabOrder = 16
        OnSelectCell = StringGridSelectCell
        ColWidths = (
          215
          64
          64)
      end
      object StringGrid70: TStringGrid
        Left = 764
        Top = 548
        Width = 240
        Height = 100
        ColCount = 3
        Ctl3D = False
        DoubleBuffered = True
        FixedCols = 0
        RowCount = 4
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goDrawFocusSelected, goRowSelect]
        ParentCtl3D = False
        ParentDoubleBuffered = False
        ScrollBars = ssVertical
        TabOrder = 17
        OnSelectCell = StringGridSelectCell
        ColWidths = (
          215
          64
          64)
      end
      object StringGrid80: TStringGrid
        Left = 512
        Top = 124
        Width = 240
        Height = 100
        ColCount = 3
        Ctl3D = False
        DoubleBuffered = True
        FixedCols = 0
        RowCount = 4
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goDrawFocusSelected, goRowSelect]
        ParentCtl3D = False
        ParentDoubleBuffered = False
        ScrollBars = ssVertical
        TabOrder = 18
        OnSelectCell = StringGridSelectCell
        ColWidths = (
          215
          64
          64)
      end
      object StringGrid60: TStringGrid
        Left = 512
        Top = 548
        Width = 240
        Height = 100
        ColCount = 3
        Ctl3D = False
        DoubleBuffered = True
        FixedCols = 0
        RowCount = 4
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goDrawFocusSelected, goRowSelect]
        ParentCtl3D = False
        ParentDoubleBuffered = False
        ScrollBars = ssVertical
        TabOrder = 19
        OnSelectCell = StringGridSelectCell
        ColWidths = (
          215
          64
          64)
      end
    end
    object TabSheet4: TTabSheet
      Caption = #26376#22577#34920
      ImageIndex = 3
      DesignSize = (
        1016
        609)
      object MonthOrderCalendar: TMonthCalendar
        Left = 8
        Top = 3
        Width = 414
        Height = 253
        Date = 39773.240628402770000000
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 0
        OnClick = DayOrderCalendarClick
      end
      object MonthOrderReportBtn: TButton
        Left = 929
        Top = 11
        Width = 83
        Height = 65
        Anchors = [akTop, akRight]
        Caption = #21015#21360
        ImageIndex = 4
        TabOrder = 1
        OnClick = MonthOrderReportBtnClick
      end
    end
    object TabSheet5: TTabSheet
      Caption = #21034#36864#21697#22577#34920
      ImageIndex = 4
      DesignSize = (
        1016
        609)
      object MonthUnItemCalendar: TMonthCalendar
        Left = 8
        Top = 3
        Width = 414
        Height = 253
        Date = 39773.240628425930000000
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 0
        OnClick = DayOrderCalendarClick
      end
      object UnItemReportBtn: TButton
        Left = 929
        Top = 11
        Width = 83
        Height = 65
        Anchors = [akTop, akRight]
        Caption = #21015#21360
        ImageIndex = 4
        TabOrder = 1
        OnClick = UnItemReportBtnClick
      end
    end
    object TabSheet6: TTabSheet
      Caption = #31805#24115#22577#34920
      ImageIndex = 5
      OnShow = TabSheet6Show
      object Splitter2: TSplitter
        Left = 0
        Top = 368
        Width = 1016
        Height = 5
        Cursor = crVSplit
        Align = alBottom
        ExplicitTop = 0
      end
      object Panel1: TPanel
        Left = 0
        Top = 373
        Width = 1016
        Height = 155
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 1016
          Height = 155
          Align = alClient
          DataSource = DebtOrderItemDataSource
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
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
              FieldName = 'Code'
              Title.Alignment = taCenter
              Title.Caption = #20195#34399
              Width = 101
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Name'
              Title.Alignment = taCenter
              Title.Caption = #33756#21517
              Width = 324
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'UnitSizeShow'
              Title.Alignment = taCenter
              Title.Caption = #22823#23567
              Width = 67
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Fee'
              Title.Alignment = taCenter
              Title.Caption = #21934#20729
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Count'
              Title.Alignment = taCenter
              Title.Caption = #25976#37327
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SumFee'
              Title.Alignment = taCenter
              Title.Caption = #37329#38989
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'DiscountStr'
              Title.Alignment = taCenter
              Title.Caption = #25307#24453
              Width = 71
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'IsReturnShow'
              Title.Alignment = taCenter
              Title.Caption = #36864
              Width = 68
              Visible = True
            end>
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1016
        Height = 368
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object DBGrid2: TDBGrid
          Left = 0
          Top = 0
          Width = 1016
          Height = 368
          Align = alClient
          DataSource = DebtOrderDataSource
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
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
              FieldName = 'FoodOrderId'
              Title.Alignment = taCenter
              Title.Caption = #24115#21934#32232#34399
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'DailySerial'
              Title.Alignment = taCenter
              Title.Caption = #26085#24207#34399
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Name'
              Title.Alignment = taCenter
              Title.Caption = #26700#34399
              Width = 79
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'CustomerCount'
              Title.Alignment = taCenter
              Title.Caption = #20154#25976
              Width = 77
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'BuildTimeStr'
              Title.Alignment = taCenter
              Title.Caption = #26178#38291
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'CheckoutTimeStr'
              Title.Alignment = taCenter
              Title.Caption = #32080#24115#26178#38291
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Name_1'
              Title.Alignment = taCenter
              Title.Caption = #21729#24037
              Width = 122
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FullFoodFee'
              Title.Alignment = taCenter
              Title.Caption = #39184#39135
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FullSideDishesFee'
              Title.Alignment = taCenter
              Title.Caption = #23567#33756
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FullDrinkFee'
              Title.Alignment = taCenter
              Title.Caption = #37202#27700
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FullOtherFee'
              Title.Alignment = taCenter
              Title.Caption = #20854#20182
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ServiceFee'
              Title.Alignment = taCenter
              Title.Caption = #26381#21209#36027
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FullTotalFee'
              Title.Alignment = taCenter
              Title.Caption = #21512#35336
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CashPay'
              Title.Alignment = taCenter
              Title.Caption = #29694#37329
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Discount'
              Title.Alignment = taCenter
              Title.Caption = #25240#35731
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Deposit'
              Title.Alignment = taCenter
              Title.Caption = #35330#37329
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DebtPay'
              Title.Alignment = taCenter
              Title.Caption = #31805#24115
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CreditCardPay'
              Title.Alignment = taCenter
              Title.Caption = #21047#21345
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FullTotalPay'
              Title.Alignment = taCenter
              Title.Caption = #32317#35336
              Visible = True
            end>
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 528
        Width = 1016
        Height = 81
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 2
        DesignSize = (
          1016
          81)
        object PrintDebtOrderButton: TButton
          Left = 697
          Top = 6
          Width = 83
          Height = 65
          Anchors = [akTop, akRight]
          Caption = #24115#21934
          ImageIndex = 4
          TabOrder = 0
          Visible = False
          OnClick = PrintOrderButtonClick
        end
        object DebtOrderButton: TButton
          Left = 826
          Top = 6
          Width = 83
          Height = 65
          Anchors = [akTop, akRight]
          Caption = #22577#34920
          ImageIndex = 4
          TabOrder = 1
          OnClick = DebtOrderButtonClick
        end
        object DeleteButton: TButton
          Left = 929
          Top = 6
          Width = 83
          Height = 65
          Anchors = [akRight, akBottom]
          Caption = #21034#38500
          ImageIndex = 3
          TabOrder = 2
          OnClick = DeleteButtonClick
        end
      end
    end
  end
  object ExitButton: TButton
    Left = 933
    Top = 655
    Width = 83
    Height = 63
    Anchors = [akRight, akBottom]
    Caption = #38626#38283
    ImageIndex = 1
    ModalResult = 2
    TabOrder = 1
  end
  object OrderDataSet: TSimpleDataSet
    Aggregates = <>
    Connection = DM.GuduConnection
    DataSet.CommandText = 
      'SELECT * '#13#10'FROM FoodOrder '#13#10'LEFT JOIN Tables ON FoodOrder.Tables' +
      'Id = Tables.TablesId'#13#10'LEFT JOIN Employee ON FoodOrder.EmployeeId' +
      ' = Employee.EmployeeId'#13#10'WHERE DATE_FORMAT(BuildTime,'#39'%Y/%m/%d'#39') ' +
      '= :Day '#13#10'AND Visible = '#39'01'#39
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftUnknown
        Name = 'Day'
        ParamType = ptInput
      end>
    Params = <>
    OnCalcFields = OrderDataSetCalcFields
    Left = 40
    Top = 360
    object OrderDataSetBuildTimeStr: TStringField
      FieldKind = fkCalculated
      FieldName = 'BuildTimeStr'
      Size = 5
      Calculated = True
    end
    object OrderDataSetCheckoutTimeStr: TStringField
      FieldKind = fkCalculated
      FieldName = 'CheckoutTimeStr'
      Size = 5
      Calculated = True
    end
    object OrderDataSetDiscount: TFloatField
      FieldName = 'Discount'
    end
    object OrderDataSetFoodOrderId: TIntegerField
      FieldName = 'FoodOrderId'
      Required = True
    end
    object OrderDataSetTablesId: TIntegerField
      FieldName = 'TablesId'
    end
    object OrderDataSetEmployeeId: TIntegerField
      FieldName = 'EmployeeId'
      Required = True
    end
    object OrderDataSetDailySerial: TIntegerField
      FieldName = 'DailySerial'
      Required = True
    end
    object OrderDataSetCustomerCount: TIntegerField
      FieldName = 'CustomerCount'
    end
    object OrderDataSetFoodFee: TFloatField
      FieldName = 'FoodFee'
    end
    object OrderDataSetSideDishesFee: TFloatField
      FieldName = 'SideDishesFee'
    end
    object OrderDataSetDrinkFee: TFloatField
      FieldName = 'DrinkFee'
    end
    object OrderDataSetOtherFee: TFloatField
      FieldName = 'OtherFee'
    end
    object OrderDataSetServiceFee: TFloatField
      FieldName = 'ServiceFee'
    end
    object OrderDataSetTotalFee: TFloatField
      FieldName = 'TotalFee'
    end
    object OrderDataSetServiceRate: TFloatField
      FieldName = 'ServiceRate'
      Required = True
    end
    object OrderDataSetDeposit: TFloatField
      FieldName = 'Deposit'
    end
    object OrderDataSetCashPay: TFloatField
      FieldName = 'CashPay'
    end
    object OrderDataSetCreditCardPay: TFloatField
      FieldName = 'CreditCardPay'
    end
    object OrderDataSetDebtPay: TFloatField
      FieldName = 'DebtPay'
    end
    object OrderDataSetTotalPay: TFloatField
      FieldName = 'TotalPay'
    end
    object OrderDataSetCheckOutTime: TSQLTimeStampField
      FieldName = 'CheckOutTime'
    end
    object OrderDataSetBuildTime: TSQLTimeStampField
      FieldName = 'BuildTime'
      Required = True
    end
    object OrderDataSetName: TWideStringField
      FieldName = 'Name'
      FixedChar = True
      Size = 50
    end
    object OrderDataSetLocation: TIntegerField
      FieldName = 'Location'
    end
    object OrderDataSetEmployeeName: TWideStringField
      DisplayLabel = 'EmployeeName'
      FieldName = 'Name_1'
      Size = 50
    end
    object OrderDataSetFreeFee: TFloatField
      FieldName = 'FreeFee'
    end
    object OrderDataSetFullFoodFee: TFloatField
      FieldName = 'FullFoodFee'
    end
    object OrderDataSetFullDrinkFee: TFloatField
      FieldName = 'FullDrinkFee'
    end
    object OrderDataSetFullSideDishesFee: TFloatField
      FieldName = 'FullSideDishesFee'
    end
    object OrderDataSetFullOtherFee: TFloatField
      FieldName = 'FullOtherFee'
    end
    object OrderDataSetFullTotalFee: TFloatField
      FieldKind = fkCalculated
      FieldName = 'FullTotalFee'
      Calculated = True
    end
    object OrderDataSetFullTotalPay: TFloatField
      FieldKind = fkCalculated
      FieldName = 'FullTotalPay'
      Calculated = True
    end
  end
  object OrderDataSource: TDataSource
    DataSet = OrderDataSet
    Left = 144
    Top = 360
  end
  object OrderItemDataSource: TDataSource
    DataSet = OrderItemDataSet
    Left = 144
    Top = 432
  end
  object OrderItemDataSet: TSimpleDataSet
    Aggregates = <>
    Connection = DM.GuduConnection
    DataSet.CommandText = 
      'SELECT * '#13#10'FROM OrderItem'#13#10'LEFT JOIN Food ON OrderItem.FoodId = ' +
      'Food.FoodId'#13#10'WHERE FoodOrderId = :FoodOrderId'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftInteger
        Name = 'FoodOrderId'
        ParamType = ptInput
      end>
    IndexFieldNames = 'FoodOrderId'
    MasterFields = 'FoodOrderId'
    MasterSource = OrderDataSource
    PacketRecords = 0
    Params = <>
    OnCalcFields = OrderItemDataSetCalcFields
    Left = 40
    Top = 432
    object OrderItemDataSetCode: TWideStringField
      FieldName = 'Code'
    end
    object OrderItemDataSetName: TWideStringField
      FieldName = 'Name'
      Size = 100
    end
    object OrderItemDataSetFee: TFloatField
      FieldName = 'Fee'
      Required = True
    end
    object OrderItemDataSetCount: TFloatField
      FieldName = 'Count'
      Required = True
    end
    object OrderItemDataSetDiscountStr: TWideStringField
      FieldKind = fkCalculated
      FieldName = 'DiscountStr'
      Calculated = True
    end
    object OrderItemDataSetDiscount: TWideStringField
      FieldName = 'Discount'
      Required = True
      Size = 2
    end
    object OrderItemDataSetFoodOrderId: TIntegerField
      FieldName = 'FoodOrderId'
    end
    object OrderItemDataSetSumFee: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SumFee'
      Calculated = True
    end
    object OrderItemDataSetUnitSizeShow: TStringField
      FieldKind = fkCalculated
      FieldName = 'UnitSizeShow'
      Calculated = True
    end
    object OrderItemDataSetUnitSize: TWideStringField
      FieldName = 'UnitSize'
      Required = True
      Size = 2
    end
    object OrderItemDataSetIsReturn: TWideStringField
      FieldName = 'IsReturn'
      Required = True
      Size = 2
    end
    object OrderItemDataSetIsReturnShow: TWideStringField
      FieldKind = fkCalculated
      FieldName = 'IsReturnShow'
      Calculated = True
    end
  end
  object MonthSalesDataSet: TSimpleDataSet
    Aggregates = <>
    Connection = DM.GuduConnection
    DataSet.CommandText = 
      'SELECT *'#13#10'FROM'#13#10'('#13#10'  SELECT OrderItem.FoodId, Sum('#13#10'    CASE IsR' +
      'eturn  '#13#10'     WHEN '#39'01'#39' THEN (0-Count)'#13#10'     ELSE Count'#13#10'    END' +
      #13#10'  ) AS Total'#13#10'  FROM OrderItem'#13#10'  WHERE FoodOrderId IN'#13#10'  ('#13#10' ' +
      '   SELECT FoodOrderId'#13#10'    FROM FoodOrder '#13#10'    WHERE DATE_FORMA' +
      'T(BuildTime,'#39'%Y/%m'#39') = :Month '#13#10'    AND Visible = '#39'01'#39#13#10'  )'#13#10'  G' +
      'ROUP BY OrderItem.FoodId'#13#10') FoodSummary'#13#10'LEFT JOIN Food ON FoodS' +
      'ummary.FoodId = Food.FoodId'#13#10'ORDER BY FoodSummary.Total DESC, Fo' +
      'od.Type'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftUnknown
        Name = 'Month'
        ParamType = ptInput
      end>
    Params = <>
    Left = 464
    Top = 56
    object MonthSalesDataSetName: TWideStringField
      FieldName = 'Name'
      Size = 100
    end
    object MonthSalesDataSetTotal: TFloatField
      FieldName = 'Total'
      Required = True
    end
    object MonthSalesDataSetUnit: TWideStringField
      FieldName = 'Unit'
      Size = 10
    end
    object MonthSalesDataSetType: TWideStringField
      FieldName = 'Type'
      Size = 2
    end
  end
  object DaySalesDataSet: TSimpleDataSet
    Aggregates = <>
    Connection = DM.GuduConnection
    DataSet.CommandText = 
      'SELECT *'#13#10'FROM'#13#10'('#13#10'  SELECT OrderItem.FoodId, Sum('#13#10'    CASE IsR' +
      'eturn  '#13#10'     WHEN '#39'01'#39' THEN (0-Count)'#13#10'     ELSE Count'#13#10'    END' +
      #13#10'  ) AS Total'#13#10'  FROM OrderItem'#13#10'  WHERE FoodOrderId IN'#13#10'  ('#13#10' ' +
      '   SELECT FoodOrderId'#13#10'    FROM FoodOrder '#13#10'    WHERE DATE_FORMA' +
      'T(BuildTime,'#39'%Y/%m/%d'#39') = :Day '#13#10'    AND Visible = '#39'01'#39#13#10'  )'#13#10'  ' +
      'GROUP BY OrderItem.FoodId'#13#10') FoodSummary'#13#10'LEFT JOIN Food ON Food' +
      'Summary.FoodId = Food.FoodId'#13#10'ORDER BY FoodSummary.Total DESC, F' +
      'ood.Type'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftUnknown
        Name = 'Day'
        ParamType = ptInput
      end>
    Params = <>
    Left = 464
    Top = 136
    object WideStringField1: TWideStringField
      FieldName = 'Name'
      Size = 100
    end
    object WideStringField2: TWideStringField
      FieldName = 'Unit'
      Size = 10
    end
    object WideStringField3: TWideStringField
      FieldName = 'Type'
      Size = 2
    end
    object DaySalesDataSetTotal: TFloatField
      FieldName = 'Total'
    end
  end
  object ClockTimer: TTimer
    OnTimer = ClockTimerTimer
    Left = 168
    Top = 720
  end
  object DebtOrderDataSet: TSimpleDataSet
    Aggregates = <>
    Connection = DM.GuduConnection
    DataSet.CommandText = 
      'SELECT * '#13#10'FROM FoodOrder '#13#10'LEFT JOIN Tables ON FoodOrder.Tables' +
      'Id = Tables.TablesId'#13#10'LEFT JOIN Employee ON FoodOrder.EmployeeId' +
      ' = Employee.EmployeeId'#13#10'WHERE DebtPay > 0'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = OrderDataSetCalcFields
    Left = 408
    Top = 360
    object StringField1: TStringField
      FieldKind = fkCalculated
      FieldName = 'BuildTimeStr'
      Size = 5
      Calculated = True
    end
    object StringField2: TStringField
      FieldKind = fkCalculated
      FieldName = 'CheckoutTimeStr'
      Size = 5
      Calculated = True
    end
    object FloatField1: TFloatField
      FieldName = 'Discount'
    end
    object IntegerField1: TIntegerField
      FieldName = 'FoodOrderId'
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'TablesId'
    end
    object IntegerField3: TIntegerField
      FieldName = 'EmployeeId'
      Required = True
    end
    object IntegerField4: TIntegerField
      FieldName = 'DailySerial'
      Required = True
    end
    object IntegerField5: TIntegerField
      FieldName = 'CustomerCount'
    end
    object FloatField2: TFloatField
      FieldName = 'FoodFee'
    end
    object FloatField3: TFloatField
      FieldName = 'SideDishesFee'
    end
    object FloatField4: TFloatField
      FieldName = 'DrinkFee'
    end
    object FloatField5: TFloatField
      FieldName = 'OtherFee'
    end
    object FloatField6: TFloatField
      FieldName = 'ServiceFee'
    end
    object FloatField7: TFloatField
      FieldName = 'TotalFee'
    end
    object FloatField8: TFloatField
      FieldName = 'ServiceRate'
      Required = True
    end
    object FloatField9: TFloatField
      FieldName = 'Deposit'
    end
    object FloatField10: TFloatField
      FieldName = 'CashPay'
    end
    object FloatField11: TFloatField
      FieldName = 'CreditCardPay'
    end
    object FloatField12: TFloatField
      FieldName = 'DebtPay'
    end
    object FloatField13: TFloatField
      FieldName = 'TotalPay'
    end
    object SQLTimeStampField1: TSQLTimeStampField
      FieldName = 'CheckOutTime'
    end
    object SQLTimeStampField2: TSQLTimeStampField
      FieldName = 'BuildTime'
      Required = True
    end
    object WideStringField4: TWideStringField
      FieldName = 'Name'
      FixedChar = True
      Size = 50
    end
    object IntegerField6: TIntegerField
      FieldName = 'Location'
    end
    object FloatField14: TFloatField
      FieldName = 'FreeFee'
    end
    object FloatField15: TFloatField
      FieldName = 'FullFoodFee'
    end
    object FloatField16: TFloatField
      FieldName = 'FullDrinkFee'
    end
    object FloatField17: TFloatField
      FieldName = 'FullSideDishesFee'
    end
    object FloatField18: TFloatField
      FieldName = 'FullOtherFee'
    end
    object FloatField19: TFloatField
      FieldKind = fkCalculated
      FieldName = 'FullTotalFee'
      Calculated = True
    end
    object FloatField20: TFloatField
      FieldKind = fkCalculated
      FieldName = 'FullTotalPay'
      Calculated = True
    end
    object DebtOrderDataSetVisible: TWideStringField
      FieldName = 'Visible'
      Required = True
      Size = 2
    end
  end
  object DebtOrderDataSource: TDataSource
    DataSet = DebtOrderDataSet
    Left = 512
    Top = 360
  end
  object DebtOrderItemDataSource: TDataSource
    DataSet = DebtOrderItemDataSet
    Left = 512
    Top = 432
  end
  object DebtOrderItemDataSet: TSimpleDataSet
    Aggregates = <>
    Connection = DM.GuduConnection
    DataSet.CommandText = 
      'SELECT * '#13#10'FROM OrderItem'#13#10'LEFT JOIN Food ON OrderItem.FoodId = ' +
      'Food.FoodId'#13#10'WHERE FoodOrderId = :FoodOrderId'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftInteger
        Name = 'FoodOrderId'
        ParamType = ptInput
      end>
    IndexFieldNames = 'FoodOrderId'
    MasterFields = 'FoodOrderId'
    MasterSource = DebtOrderDataSource
    PacketRecords = 0
    Params = <>
    OnCalcFields = OrderItemDataSetCalcFields
    Left = 408
    Top = 432
    object WideStringField6: TWideStringField
      FieldName = 'Code'
    end
    object WideStringField7: TWideStringField
      FieldName = 'Name'
      Size = 100
    end
    object FloatField21: TFloatField
      FieldName = 'Fee'
      Required = True
    end
    object FloatField22: TFloatField
      FieldName = 'Count'
      Required = True
    end
    object WideStringField8: TWideStringField
      FieldKind = fkCalculated
      FieldName = 'DiscountStr'
      Calculated = True
    end
    object WideStringField9: TWideStringField
      FieldName = 'Discount'
      Required = True
      Size = 2
    end
    object IntegerField7: TIntegerField
      FieldName = 'FoodOrderId'
    end
    object FloatField23: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SumFee'
      Calculated = True
    end
    object StringField3: TStringField
      FieldKind = fkCalculated
      FieldName = 'UnitSizeShow'
      Calculated = True
    end
    object WideStringField10: TWideStringField
      FieldName = 'UnitSize'
      Required = True
      Size = 2
    end
    object WideStringField11: TWideStringField
      FieldName = 'IsReturn'
      Required = True
      Size = 2
    end
    object WideStringField12: TWideStringField
      FieldKind = fkCalculated
      FieldName = 'IsReturnShow'
      Calculated = True
    end
  end
end
