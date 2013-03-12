object FormMonthOrderReport: TFormMonthOrderReport
  Left = 0
  Top = 0
  Caption = 'FormMonthOrderReport'
  ClientHeight = 828
  ClientWidth = 1592
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object MonthOrderReport: TQuickRep
    Left = -3
    Top = 8
    Width = 1587
    Height = 2245
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
    Zoom = 200
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stQRP
    object QRBand1: TQRBand
      Left = 53
      Top = 76
      Width = 1474
      Height = 69
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
        91.281250000000000000
        1949.979166666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object TitleQRLabel: TQRLabel
        Left = 0
        Top = 14
        Width = 1474
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          64.822916666666680000
          0.000000000000000000
          18.520833333333330000
          1949.979166666667000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'TitleQRLabel'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 16
      end
    end
    object QRBand2: TQRBand
      Left = 53
      Top = 145
      Width = 1474
      Height = 58
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
        76.729166666666670000
        1949.979166666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel1: TQRLabel
        Left = 0
        Top = 14
        Width = 146
        Height = 38
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          0.000000000000000000
          18.520833333333330000
          193.145833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #26085#26399
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 152
        Top = 14
        Width = 74
        Height = 38
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          201.083333333333300000
          18.520833333333330000
          97.895833333333340000)
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
        Left = 328
        Top = 14
        Width = 90
        Height = 38
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          433.916666666666800000
          18.520833333333330000
          119.062500000000000000)
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
        Left = 424
        Top = 14
        Width = 90
        Height = 38
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          560.916666666666800000
          18.520833333333330000
          119.062500000000000000)
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
        Left = 520
        Top = 14
        Width = 90
        Height = 38
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          687.916666666666800000
          18.520833333333330000
          119.062500000000000000)
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
        Left = 616
        Top = 14
        Width = 106
        Height = 38
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          814.916666666666800000
          18.520833333333330000
          140.229166666666700000)
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
        Left = 728
        Top = 14
        Width = 106
        Height = 38
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          963.083333333333400000
          18.520833333333330000
          140.229166666666700000)
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
        Left = 944
        Top = 14
        Width = 90
        Height = 38
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1248.833333333333000000
          18.520833333333330000
          119.062500000000000000)
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
        Left = 1040
        Top = 14
        Width = 90
        Height = 38
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1375.833333333333000000
          18.520833333333330000
          119.062500000000000000)
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
        Left = 1136
        Top = 14
        Width = 98
        Height = 38
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1502.833333333333000000
          18.520833333333330000
          129.645833333333300000)
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
        Left = 1240
        Top = 14
        Width = 106
        Height = 38
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1640.416666666667000000
          18.520833333333330000
          140.229166666666700000)
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
        Left = 1352
        Top = 14
        Width = 122
        Height = 38
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1788.583333333333000000
          18.520833333333330000
          161.395833333333300000)
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
        Left = 840
        Top = 14
        Width = 98
        Height = 38
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1111.250000000000000000
          18.520833333333330000
          129.645833333333300000)
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
        Left = 232
        Top = 14
        Width = 90
        Height = 38
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          306.916666666666700000
          18.520833333333330000
          119.062500000000000000)
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
      Left = 53
      Top = 203
      Width = 1474
      Height = 90
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
        1949.979166666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 0
        Top = 6
        Width = 146
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          7.937500000000000000
          193.145833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = OrderDataSet
        DataField = 'BuildTime'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 38
        Top = 46
        Width = 188
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          50.270833333333330000
          60.854166666666680000
          248.708333333333300000)
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
        Left = 232
        Top = 46
        Width = 186
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          306.916666666666700000
          60.854166666666680000
          246.062500000000000000)
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
        Left = 328
        Top = 6
        Width = 186
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          433.916666666666800000
          7.937500000000000000
          246.062500000000000000)
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
        Left = 424
        Top = 46
        Width = 186
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          560.916666666666800000
          60.854166666666680000
          246.062500000000000000)
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
        Left = 520
        Top = 6
        Width = 202
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          687.916666666666800000
          7.937500000000000000
          267.229166666666700000)
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
        Left = 616
        Top = 46
        Width = 218
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          814.916666666666800000
          60.854166666666680000
          288.395833333333400000)
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
        Left = 840
        Top = 46
        Width = 194
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1111.250000000000000000
          60.854166666666680000
          256.645833333333400000)
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
        Left = 944
        Top = 6
        Width = 186
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1248.833333333333000000
          7.937500000000000000
          246.062500000000000000)
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
        Left = 1040
        Top = 46
        Width = 194
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1375.833333333333000000
          60.854166666666680000
          256.645833333333400000)
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
        Left = 1136
        Top = 6
        Width = 210
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1502.833333333333000000
          7.937500000000000000
          277.812500000000000000)
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
        Left = 1240
        Top = 46
        Width = 234
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1640.416666666667000000
          60.854166666666680000
          309.562500000000000000)
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
        Top = 86
        Width = 1474
        Height = 4
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
        Left = 728
        Top = 6
        Width = 210
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          963.083333333333400000
          7.937500000000000000
          277.812500000000000000)
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
        Left = 152
        Top = 6
        Width = 170
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          201.083333333333300000
          7.937500000000000000
          224.895833333333300000)
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
      Left = 53
      Top = 293
      Width = 1474
      Height = 90
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
        1949.979166666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRExpr1: TQRExpr
        Left = 38
        Top = 45
        Width = 188
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          43.656250000000000000
          50.270833333333330000
          59.531250000000000000
          248.708333333333300000)
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
        Left = 232
        Top = 45
        Width = 186
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          43.656250000000000000
          306.916666666666700000
          59.531250000000000000
          246.062500000000000000)
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
        Left = 328
        Top = 6
        Width = 186
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          43.656250000000000000
          433.916666666666800000
          7.937500000000000000
          246.062500000000000000)
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
        Left = 424
        Top = 45
        Width = 186
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          43.656250000000000000
          560.916666666666800000
          59.531250000000000000
          246.062500000000000000)
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
        Left = 520
        Top = 6
        Width = 202
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          43.656250000000000000
          687.916666666666800000
          7.937500000000000000
          267.229166666666700000)
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
        Left = 616
        Top = 45
        Width = 218
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          43.656250000000000000
          814.916666666666800000
          59.531250000000000000
          288.395833333333400000)
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
        Left = 728
        Top = 6
        Width = 210
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          43.656250000000000000
          963.083333333333400000
          7.937500000000000000
          277.812500000000000000)
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
        Left = 840
        Top = 45
        Width = 194
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          43.656250000000000000
          1111.250000000000000000
          59.531250000000000000
          256.645833333333400000)
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
        Left = 944
        Top = 6
        Width = 186
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          43.656250000000000000
          1248.833333333333000000
          7.937500000000000000
          246.062500000000000000)
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
        Left = 1040
        Top = 45
        Width = 194
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          43.656250000000000000
          1375.833333333333000000
          59.531250000000000000
          256.645833333333400000)
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
        Left = 1136
        Top = 6
        Width = 210
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          43.656250000000000000
          1502.833333333333000000
          7.937500000000000000
          277.812500000000000000)
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
        Left = 1240
        Top = 45
        Width = 234
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          43.656250000000000000
          1640.416666666667000000
          59.531250000000000000
          309.562500000000000000)
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
      object QRExpr2: TQRExpr
        Left = 128
        Top = 6
        Width = 194
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          43.656250000000000000
          169.333333333333300000
          7.937500000000000000
          256.645833333333400000)
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
      Left = 53
      Top = 383
      Width = 1474
      Height = 46
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
        60.854166666666670000
        1949.979166666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object PageExpr: TQRExpr
        Left = 541
        Top = 8
        Width = 188
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          43.656250000000000000
          715.697916666666700000
          10.583333333333330000
          248.708333333333300000)
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
        Left = 736
        Top = 8
        Width = 178
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          43.656250000000000000
          973.666666666666700000
          10.583333333333330000
          235.479166666666700000)
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
      'SELECT DATE_FORMAT(BuildTime,'#39'%Y/%m/%d'#39') AS BuildTime, Sum(FullF' +
      'oodFee) AS FullFoodFee, Sum(FullSideDishesFee) AS FullSideDishes' +
      'Fee, Sum(FullDrinkFee) AS FullDrinkFee, Sum(FullOtherFee) AS Ful' +
      'lOtherFee, Sum(ServiceFee) AS ServiceFee, Sum(CashPay) AS CashPa' +
      'y, Sum(FreeFee) AS FreeFee, Sum(Discount) AS Discount, Sum(Depos' +
      'it) AS Deposit, Sum(DebtPay) AS DebtPay, Sum(CreditCardPay) AS C' +
      'reditCardPay'#13#10'FROM FoodOrder '#13#10'LEFT JOIN Tables ON FoodOrder.Tab' +
      'lesId = Tables.TablesId'#13#10'LEFT JOIN Employee ON FoodOrder.Employe' +
      'eId = Employee.EmployeeId'#13#10'WHERE DATE_FORMAT(BuildTime,'#39'%Y/%m'#39') ' +
      '= :Month '#13#10'AND Visible = '#39'01'#39#13#10'GROUP BY DATE_FORMAT(BuildTime,'#39'%' +
      'Y/%m/%d'#39')'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftUnknown
        Name = 'Month'
        ParamType = ptInput
      end>
    Params = <>
    OnCalcFields = OrderDataSetCalcFields
    Left = 112
    Top = 368
    object OrderDataSetBuildTime: TWideStringField
      FieldName = 'BuildTime'
      Size = 10
    end
    object OrderDataSetFullFoodFee: TFloatField
      FieldName = 'FullFoodFee'
    end
    object OrderDataSetFullSideDishesFee: TFloatField
      FieldName = 'FullSideDishesFee'
    end
    object OrderDataSetFullDrinkFee: TFloatField
      FieldName = 'FullDrinkFee'
    end
    object OrderDataSetFullOtherFee: TFloatField
      FieldName = 'FullOtherFee'
    end
    object OrderDataSetServiceFee: TFloatField
      FieldName = 'ServiceFee'
    end
    object OrderDataSetCashPay: TFloatField
      FieldName = 'CashPay'
    end
    object OrderDataSetFreeFee: TFloatField
      FieldName = 'FreeFee'
    end
    object OrderDataSetDiscount: TFloatField
      FieldName = 'Discount'
    end
    object OrderDataSetDeposit: TFloatField
      FieldName = 'Deposit'
    end
    object OrderDataSetDebtPay: TFloatField
      FieldName = 'DebtPay'
    end
    object OrderDataSetCreditCardPay: TFloatField
      FieldName = 'CreditCardPay'
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
