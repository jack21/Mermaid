object FormDailyOrderReport: TFormDailyOrderReport
  Left = 0
  Top = 0
  Caption = 'FormDailyOrderReport'
  ClientHeight = 822
  ClientWidth = 1501
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 19
  object DailyOrderReport: TQuickRep
    Left = 16
    Top = 8
    Width = 1270
    Height = 1796
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = OrderDataSet
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      70.000000000000000000
      80.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 160
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    PrevShowThumbs = False
    PrevShowSearch = False
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stQRP
    object QRBand1: TQRBand
      Left = 42
      Top = 60
      Width = 1179
      Height = 64
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333300000
        1949.648437500000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object TitleQRLabel: TQRLabel
        Left = 0
        Top = 13
        Width = 1179
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          0.000000000000000000
          21.166666666666670000
          1949.979166666667000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'TitleQRLabel'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
    end
    object QRBand2: TQRBand
      Left = 42
      Top = 124
      Width = 1179
      Height = 45
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        74.414062500000000000
        1949.648437500000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel1: TQRLabel
        Left = 0
        Top = 9
        Width = 79
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          49.609375000000000000
          0.000000000000000000
          14.882812500000000000
          130.638020833333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #24115#21934#34399#30908
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 85
        Top = 9
        Width = 106
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          49.609375000000000000
          140.559895833333300000
          14.882812500000000000
          175.286458333333400000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #26700#34399
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 197
        Top = 9
        Width = 70
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          49.609375000000000000
          325.768229166666800000
          14.882812500000000000
          115.755208333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #39184#39135
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 349
        Top = 9
        Width = 70
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          49.609375000000000000
          577.122395833333400000
          14.882812500000000000
          115.755208333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #37202#27700
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 425
        Top = 9
        Width = 70
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          49.609375000000000000
          702.799479166666800000
          14.882812500000000000
          115.755208333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #20854#20182
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel7: TQRLabel
        Left = 501
        Top = 9
        Width = 70
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          49.609375000000000000
          828.476562500000000000
          14.882812500000000000
          115.755208333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #26381#21209
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel8: TQRLabel
        Left = 577
        Top = 9
        Width = 70
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          49.609375000000000000
          954.153645833333500000
          14.882812500000000000
          115.755208333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #21512#35336
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel9: TQRLabel
        Left = 653
        Top = 9
        Width = 70
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          49.609375000000000000
          1079.830729166667000000
          14.882812500000000000
          115.755208333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #29694#37329
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel10: TQRLabel
        Left = 805
        Top = 9
        Width = 70
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          49.609375000000000000
          1331.184895833333000000
          14.882812500000000000
          115.755208333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #25240#35731
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel11: TQRLabel
        Left = 881
        Top = 9
        Width = 70
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          49.609375000000000000
          1456.861979166667000000
          14.882812500000000000
          115.755208333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #35330#37329
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel12: TQRLabel
        Left = 957
        Top = 9
        Width = 70
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          49.609375000000000000
          1582.539062500000000000
          14.882812500000000000
          115.755208333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #31805#24115
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel13: TQRLabel
        Left = 1033
        Top = 9
        Width = 70
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          49.609375000000000000
          1708.216145833333000000
          14.882812500000000000
          115.755208333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #21047#21345
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel14: TQRLabel
        Left = 1109
        Top = 9
        Width = 70
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          49.609375000000000000
          1833.893229166667000000
          14.882812500000000000
          115.755208333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #32317#35336
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel15: TQRLabel
        Left = 729
        Top = 9
        Width = 70
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          49.609375000000000000
          1205.507812500000000000
          14.882812500000000000
          115.755208333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #25307#24453
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 273
        Top = 9
        Width = 70
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          49.609375000000000000
          451.445312500000000000
          14.882812500000000000
          115.755208333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #23567#33756
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
    end
    object QRBand3: TQRBand
      Left = 42
      Top = 169
      Width = 1179
      Height = 72
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        119.062500000000000000
        1949.648437500000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 0
        Top = 6
        Width = 79
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.648437500000000000
          0.000000000000000000
          9.921875000000000000
          130.638020833333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = OrderDataSet
        DataField = 'FoodOrderId'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 85
        Top = 6
        Width = 106
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.648437500000000000
          140.559895833333300000
          9.921875000000000000
          175.286458333333400000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = OrderDataSet
        DataField = 'Name'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 117
        Top = 36
        Width = 150
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.648437500000000000
          193.476562500000000000
          59.531250000000000000
          248.046875000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = OrderDataSet
        DataField = 'FullFoodFee'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 273
        Top = 36
        Width = 146
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.648437500000000000
          451.445312500000000000
          59.531250000000000000
          241.432291666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = OrderDataSet
        DataField = 'FullDrinkFee'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText6: TQRDBText
        Left = 349
        Top = 6
        Width = 146
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.648437500000000000
          577.122395833333400000
          9.921875000000000000
          241.432291666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = OrderDataSet
        DataField = 'FullOtherFee'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText7: TQRDBText
        Left = 425
        Top = 36
        Width = 146
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.648437500000000000
          702.799479166666800000
          59.531250000000000000
          241.432291666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = OrderDataSet
        DataField = 'ServiceFee'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText8: TQRDBText
        Left = 501
        Top = 6
        Width = 146
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.648437500000000000
          828.476562500000000000
          9.921875000000000000
          241.432291666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = OrderDataSet
        DataField = 'FullTotalFee'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText9: TQRDBText
        Left = 577
        Top = 36
        Width = 146
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.648437500000000000
          954.153645833333500000
          59.531250000000000000
          241.432291666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = OrderDataSet
        DataField = 'CashPay'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText10: TQRDBText
        Left = 729
        Top = 36
        Width = 146
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.648437500000000000
          1205.507812500000000000
          59.531250000000000000
          241.432291666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = OrderDataSet
        DataField = 'Discount'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText11: TQRDBText
        Left = 805
        Top = 6
        Width = 146
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.648437500000000000
          1331.184895833333000000
          9.921875000000000000
          241.432291666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = OrderDataSet
        DataField = 'Deposit'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText12: TQRDBText
        Left = 881
        Top = 36
        Width = 146
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.648437500000000000
          1456.861979166667000000
          59.531250000000000000
          241.432291666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = OrderDataSet
        DataField = 'DebtPay'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText13: TQRDBText
        Left = 957
        Top = 6
        Width = 146
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.648437500000000000
          1582.539062500000000000
          9.921875000000000000
          241.432291666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = OrderDataSet
        DataField = 'CreditCardPay'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText14: TQRDBText
        Left = 1033
        Top = 36
        Width = 146
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.648437500000000000
          1708.216145833333000000
          59.531250000000000000
          241.432291666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = OrderDataSet
        DataField = 'FullTotalPay'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRShape1: TQRShape
        Left = 0
        Top = 69
        Width = 1179
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          4.960937500000000000
          0.000000000000000000
          114.101562500000000000
          1949.648437500000000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRDBText15: TQRDBText
        Left = 653
        Top = 6
        Width = 146
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.648437500000000000
          1079.830729166667000000
          9.921875000000000000
          241.432291666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = OrderDataSet
        DataField = 'FreeFee'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 197
        Top = 6
        Width = 146
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.648437500000000000
          325.768229166666800000
          9.921875000000000000
          241.432291666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = OrderDataSet
        DataField = 'FullSideDishesFee'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
    end
    object QRBand4: TQRBand
      Left = 42
      Top = 241
      Width = 1179
      Height = 72
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        119.062500000000000000
        1949.648437500000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRExpr1: TQRExpr
        Left = 117
        Top = 38
        Width = 150
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.994791666666670000
          193.476562500000000000
          62.838541666666680000
          248.046875000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(OrderDataSet.FullFoodFee)'
        ExportAs = exptText
        FontSize = 10
      end
      object QRExpr3: TQRExpr
        Left = 273
        Top = 38
        Width = 146
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.994791666666670000
          451.445312500000000000
          62.838541666666680000
          241.432291666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(OrderDataSet.FullDrinkFee)'
        ExportAs = exptText
        FontSize = 10
      end
      object QRExpr4: TQRExpr
        Left = 349
        Top = 6
        Width = 146
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.994791666666670000
          577.122395833333400000
          9.921875000000000000
          241.432291666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(OrderDataSet.FullOtherFee)'
        ExportAs = exptText
        FontSize = 10
      end
      object QRExpr5: TQRExpr
        Left = 425
        Top = 38
        Width = 146
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.994791666666670000
          702.799479166666800000
          62.838541666666680000
          241.432291666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(OrderDataSet.ServiceFee)'
        ExportAs = exptText
        FontSize = 10
      end
      object QRExpr6: TQRExpr
        Left = 501
        Top = 6
        Width = 146
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.994791666666670000
          828.476562500000000000
          9.921875000000000000
          241.432291666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(OrderDataSet.FullTotalFee)'
        ExportAs = exptText
        FontSize = 10
      end
      object QRExpr7: TQRExpr
        Left = 577
        Top = 38
        Width = 146
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.994791666666670000
          954.153645833333500000
          62.838541666666680000
          241.432291666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(OrderDataSet.CashPay)'
        ExportAs = exptText
        FontSize = 10
      end
      object QRExpr8: TQRExpr
        Left = 653
        Top = 6
        Width = 146
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.994791666666670000
          1079.830729166667000000
          9.921875000000000000
          241.432291666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(OrderDataSet.FreeFee)'
        ExportAs = exptText
        FontSize = 10
      end
      object QRExpr9: TQRExpr
        Left = 729
        Top = 38
        Width = 146
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.994791666666670000
          1205.507812500000000000
          62.838541666666680000
          241.432291666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(OrderDataSet.Discount)'
        ExportAs = exptText
        FontSize = 10
      end
      object QRExpr10: TQRExpr
        Left = 805
        Top = 6
        Width = 146
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.994791666666670000
          1331.184895833333000000
          9.921875000000000000
          241.432291666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(OrderDataSet.Deposit)'
        ExportAs = exptText
        FontSize = 10
      end
      object QRExpr11: TQRExpr
        Left = 881
        Top = 38
        Width = 146
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.994791666666670000
          1456.861979166667000000
          62.838541666666680000
          241.432291666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(OrderDataSet.DebtPay)'
        ExportAs = exptText
        FontSize = 10
      end
      object QRExpr12: TQRExpr
        Left = 957
        Top = 6
        Width = 146
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.994791666666670000
          1582.539062500000000000
          9.921875000000000000
          241.432291666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(OrderDataSet.CreditCardPay)'
        ExportAs = exptText
        FontSize = 10
      end
      object QRExpr13: TQRExpr
        Left = 1033
        Top = 38
        Width = 146
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.994791666666670000
          1708.216145833333000000
          62.838541666666680000
          241.432291666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(OrderDataSet.FullTotalPay)'
        ExportAs = exptText
        FontSize = 10
      end
      object QRExpr2: TQRExpr
        Left = 197
        Top = 6
        Width = 146
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.994791666666670000
          325.768229166666800000
          9.921875000000000000
          241.432291666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(OrderDataSet.FullSideDishesFee)'
        ExportAs = exptText
        FontSize = 10
      end
    end
    object QRBand5: TQRBand
      Left = 42
      Top = 313
      Width = 1179
      Height = 32
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        52.916666666666670000
        1949.648437500000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object PageExpr: TQRExpr
        Left = 433
        Top = 6
        Width = 150
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.994791666666670000
          716.028645833333300000
          9.921875000000000000
          248.046875000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'PAGENUMBER'
        ExportAs = exptText
        FontSize = 10
      end
      object SumPageLabel: TQRLabel
        Left = 589
        Top = 6
        Width = 142
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.994791666666670000
          973.997395833333300000
          9.921875000000000000
          234.817708333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'SumPageLabel'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
    end
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
    Left = 96
    Top = 240
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
end
