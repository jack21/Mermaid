object FormBill: TFormBill
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = #21015#21360#24115#21934
  ClientHeight = 1042
  ClientWidth = 1118
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 23
  object BillReport: TQuickRep
    Tag = 1
    Left = -24
    Top = -32
    Width = 1270
    Height = 1796
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    BeforePrint = BillReportBeforePrint
    DataSet = OrderItemDataSet
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
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
      970.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      500.000000000000000000
      600.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 1
    PrinterSettings.LastPage = 1
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = True
    PrinterSettings.CustomBinCode = 15
    PrinterSettings.ExtendedDuplex = 1
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 70
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 1
    PrinterSettings.ColorOption = 2
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 160
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    PreviewWidth = 1000
    PreviewHeight = 1000
    PrevShowThumbs = False
    PrevShowSearch = False
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stQRP
    object QRBand1: TQRBand
      Left = 302
      Top = 60
      Width = 605
      Height = 120
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
        198.437500000000000000
        1000.455729166667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRLabel1: TQRLabel
        Left = 0
        Top = 0
        Width = 59
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          51.263020833333330000
          0.000000000000000000
          0.000000000000000000
          97.565104166666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26700#34399':'
        Color = clWhite
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRDBText1: TQRDBText
        Left = 65
        Top = 0
        Width = 69
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          51.263020833333330000
          107.486979166666700000
          0.000000000000000000
          114.101562500000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = OrderDataSet
        DataField = 'Name'
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRLabel2: TQRLabel
        Left = 336
        Top = 0
        Width = 59
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          51.263020833333330000
          555.625000000000000000
          0.000000000000000000
          97.565104166666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20154#25976':'
        Color = clWhite
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRDBText2: TQRDBText
        Left = 430
        Top = 0
        Width = 176
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          51.263020833333330000
          711.067708333333300000
          0.000000000000000000
          291.041666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = OrderDataSet
        DataField = 'CustomerCount'
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRLabel3: TQRLabel
        Left = 0
        Top = 33
        Width = 85
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          51.263020833333330000
          0.000000000000000000
          54.570312500000000000
          140.559895833333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24115#21934#34399':'
        Color = clWhite
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRDBText3: TQRDBText
        Left = 95
        Top = 33
        Width = 123
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          51.263020833333330000
          157.096354166666700000
          54.570312500000000000
          203.398437500000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = OrderDataSet
        DataField = 'DailySerial'
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRDBText4: TQRDBText
        Left = 489
        Top = 33
        Width = 114
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          51.263020833333330000
          808.632812500000000000
          54.570312500000000000
          188.515625000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = OrderDataSet
        DataField = 'BuildTime'
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRDBText5: TQRDBText
        Left = 438
        Top = 73
        Width = 168
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          51.263020833333330000
          724.296875000000000000
          120.716145833333300000
          277.812500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = OrderDataSet
        DataField = 'CheckOutTime'
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
    end
    object QRBand2: TQRBand
      Left = 302
      Top = 180
      Width = 605
      Height = 50
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
        82.682291666666670000
        1000.455729166667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel4: TQRLabel
        Left = 0
        Top = 9
        Width = 200
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          51.263020833333330000
          0.000000000000000000
          14.882812500000000000
          330.729166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #33756#21517
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRLabel5: TQRLabel
        Left = 206
        Top = 9
        Width = 73
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          51.263020833333330000
          340.651041666666700000
          14.882812500000000000
          120.716145833333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #21934#20729
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRLabel6: TQRLabel
        Left = 285
        Top = 9
        Width = 53
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          51.263020833333330000
          471.289062500000000000
          14.882812500000000000
          87.643229166666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25976#37327
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRLabel7: TQRLabel
        Left = 344
        Top = 9
        Width = 53
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          51.263020833333330000
          568.854166666666700000
          14.882812500000000000
          87.643229166666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21934#20301
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRLabel8: TQRLabel
        Left = 403
        Top = 9
        Width = 110
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          51.263020833333330000
          666.419270833333300000
          14.882812500000000000
          181.901041666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #37329#38989
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRLabel9: TQRLabel
        Left = 519
        Top = 9
        Width = 53
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          51.263020833333330000
          858.242187500000000000
          14.882812500000000000
          87.643229166666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25307#24453
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRLabel18: TQRLabel
        Left = 578
        Top = 9
        Width = 27
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          51.263020833333330000
          955.807291666666700000
          14.882812500000000000
          44.648437500000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #36864
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
    end
    object QRBand3: TQRBand
      Left = 302
      Top = 230
      Width = 605
      Height = 34
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
      LinkBand = QRBand2
      Size.Values = (
        56.223958333333330000
        1000.455729166667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText6: TQRDBText
        Left = -1
        Top = 0
        Width = 201
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          51.263020833333330000
          -1.653645833333333000
          0.000000000000000000
          332.382812500000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = OrderItemDataSet
        DataField = 'NameStr'
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRDBText7: TQRDBText
        Left = 206
        Top = 0
        Width = 73
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          51.263020833333330000
          340.651041666666700000
          0.000000000000000000
          120.716145833333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = OrderItemDataSet
        DataField = 'Fee'
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRDBText8: TQRDBText
        Left = 285
        Top = 0
        Width = 53
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          51.263020833333330000
          471.289062500000000000
          0.000000000000000000
          87.643229166666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = OrderItemDataSet
        DataField = 'Count'
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRDBText9: TQRDBText
        Left = 344
        Top = 0
        Width = 53
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          51.263020833333330000
          568.854166666666700000
          0.000000000000000000
          87.643229166666670000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = OrderItemDataSet
        DataField = 'Unit'
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRDBText10: TQRDBText
        Left = 403
        Top = 0
        Width = 107
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          51.263020833333330000
          666.419270833333300000
          0.000000000000000000
          176.940104166666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = OrderItemDataSet
        DataField = 'SumFee'
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRDBText11: TQRDBText
        Left = 519
        Top = 0
        Width = 53
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          51.263020833333330000
          858.242187500000000000
          0.000000000000000000
          87.643229166666670000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = OrderItemDataSet
        DataField = 'DiscountStr'
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRDBText20: TQRDBText
        Left = 578
        Top = 0
        Width = 27
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          51.263020833333330000
          955.807291666666700000
          0.000000000000000000
          44.648437500000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = OrderItemDataSet
        DataField = 'IsReturnShow'
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
    end
    object QRBand4: TQRBand
      Left = 302
      Top = 264
      Width = 605
      Height = 294
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
        486.171875000000000000
        1000.455729166667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRLabel10: TQRLabel
        Left = 0
        Top = 39
        Width = 110
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          51.263020833333330000
          0.000000000000000000
          64.492187500000000000
          181.901041666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #39184#39135#37329#38989':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRDBText12: TQRDBText
        Left = 120
        Top = 38
        Width = 163
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          198.437500000000000000
          63.500000000000000000
          269.875000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = OrderDataSet
        DataField = 'SumFoodFee'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRLabel11: TQRLabel
        Left = 313
        Top = 39
        Width = 110
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          51.263020833333330000
          517.591145833333300000
          64.492187500000000000
          181.901041666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #37202#27700#37329#38989':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRDBText13: TQRDBText
        Left = 434
        Top = 38
        Width = 171
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          717.020833333333400000
          63.500000000000000000
          283.104166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = OrderDataSet
        DataField = 'DrinkFee'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRLabel13: TQRLabel
        Left = 0
        Top = 77
        Width = 110
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          51.263020833333330000
          0.000000000000000000
          127.330729166666700000
          181.901041666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20854#20182#37329#38989':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRDBText15: TQRDBText
        Left = 120
        Top = 77
        Width = 163
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          51.026785714285720000
          198.437500000000000000
          126.622023809523800000
          270.252976190476200000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = OrderDataSet
        DataField = 'OtherFee'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRLabel14: TQRLabel
        Left = 0
        Top = 114
        Width = 111
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          51.026785714285720000
          0.000000000000000000
          188.988095238095200000
          183.318452380952400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #26381'  '#21209'  '#36027':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRDBText16: TQRDBText
        Left = 120
        Top = 114
        Width = 163
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          51.026785714285720000
          198.437500000000000000
          188.988095238095200000
          270.252976190476200000)
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
        FontSize = 12
      end
      object QRShape1: TQRShape
        Left = -1
        Top = 152
        Width = 605
        Height = 5
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          7.559523809523811000
          -1.889880952380953000
          251.354166666666700000
          999.747023809524000000)
        Pen.Width = 2
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel15: TQRLabel
        Left = 0
        Top = 173
        Width = 110
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          51.263020833333330000
          0.000000000000000000
          286.080729166666700000
          181.901041666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25033#25910#37329#38989':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRDBText17: TQRDBText
        Left = 120
        Top = 173
        Width = 163
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          51.026785714285720000
          198.437500000000000000
          285.372023809523800000
          270.252976190476200000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = OrderDataSet
        DataField = 'TotalFee'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRLabel16: TQRLabel
        Left = 0
        Top = 210
        Width = 110
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          51.263020833333330000
          0.000000000000000000
          347.265625000000000000
          181.901041666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #35330#12288#12288#37329':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRDBText18: TQRDBText
        Left = 120
        Top = 210
        Width = 163
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          51.026785714285720000
          198.437500000000000000
          347.738095238095200000
          270.252976190476200000)
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
        FontSize = 12
      end
      object DiscountQRLabel: TQRLabel
        Left = 313
        Top = 210
        Width = 110
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          51.263020833333330000
          517.591145833333300000
          347.265625000000000000
          181.901041666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25240#12288#12288#35731':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object DiscountQRDBText: TQRDBText
        Left = 433
        Top = 210
        Width = 171
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          51.026785714285720000
          716.264880952380900000
          347.738095238095200000
          283.482142857142800000)
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
        FontSize = 12
      end
      object QRShape2: TQRShape
        Left = 0
        Top = 248
        Width = 605
        Height = 6
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          9.449404761904763000
          0.000000000000000000
          410.104166666666800000
          999.747023809524000000)
        Pen.Width = 2
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel17: TQRLabel
        Left = 0
        Top = 261
        Width = 110
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          51.263020833333330000
          0.000000000000000000
          431.601562500000000000
          181.901041666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #23526#25910#37329#38989':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRDBText19: TQRDBText
        Left = 120
        Top = 261
        Width = 163
        Height = 32
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666680000
          198.437500000000000000
          430.892857142857100000
          270.252976190476200000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = OrderDataSet
        DataField = 'TotalPay'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRDBText14: TQRDBText
        Left = 433
        Top = 77
        Width = 171
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          51.026785714285720000
          716.264880952380900000
          126.622023809523800000
          283.482142857142800000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = OrderDataSet
        DataField = 'SubTotalFee'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRLabel12: TQRLabel
        Left = 313
        Top = 77
        Width = 110
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          51.263020833333330000
          517.591145833333300000
          127.330729166666700000
          181.901041666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #23567#35336#37329#38989':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
    end
  end
  object OrderDataSet: TSimpleDataSet
    Aggregates = <>
    Connection = DM.GuduConnection
    DataSet.CommandText = 
      'SELECT * '#13#10'FROM FoodOrder '#13#10'LEFT JOIN Tables ON FoodOrder.Tables' +
      'Id = Tables.TablesId'#13#10'WHERE FoodOrderId = :FoodOrderId'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftInteger
        Name = 'FoodOrderId'
        ParamType = ptInput
        Value = '6'
      end>
    Params = <>
    OnCalcFields = OrderDataSetCalcFields
    Left = 40
    Top = 464
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
    object OrderDataSetTablesId_1: TIntegerField
      FieldName = 'TablesId_1'
    end
    object OrderDataSetRestaurantId: TIntegerField
      FieldName = 'RestaurantId'
    end
    object OrderDataSetName: TWideStringField
      FieldName = 'Name'
      FixedChar = True
      Size = 50
    end
    object OrderDataSetLocation: TIntegerField
      FieldName = 'Location'
    end
    object OrderDataSetSumFoodFee: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SumFoodFee'
      Calculated = True
    end
    object OrderDataSetSubTotalFee: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SubTotalFee'
      Calculated = True
    end
  end
  object OrderDataSource: TDataSource
    DataSet = OrderDataSet
    Left = 120
    Top = 464
  end
  object OrderItemDataSource: TDataSource
    DataSet = OrderItemDataSet
    Left = 120
    Top = 544
  end
  object OrderItemDataSet: TSimpleDataSet
    Aggregates = <>
    Connection = DM.GuduConnection
    DataSet.CommandText = 
      'SELECT * '#13#10'FROM OrderItem'#13#10'LEFT JOIN Food ON OrderItem.FoodId = ' +
      'Food.FoodId'#13#10'WHERE FoodOrderId = :FoodOrderId'#13#10'ORDER BY OrderIte' +
      'mId'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftString
        Name = 'FoodOrderId'
        ParamType = ptInput
        Size = 2
        Value = '0'
      end>
    IndexFieldNames = 'FoodOrderId'
    Params = <>
    OnCalcFields = OrderItemDataSetCalcFields
    Left = 40
    Top = 544
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
    object OrderItemDataSetUnit: TWideStringField
      FieldName = 'Unit'
      Size = 10
    end
    object OrderItemDataSetNameStr: TWideStringField
      FieldKind = fkCalculated
      FieldName = 'NameStr'
      Calculated = True
    end
    object OrderItemDataSetUnitSize: TWideStringField
      FieldName = 'UnitSize'
      Required = True
      Size = 2
    end
    object OrderItemDataSetOrderItemId: TIntegerField
      FieldName = 'OrderItemId'
      Required = True
    end
    object OrderItemDataSetFoodId: TIntegerField
      FieldName = 'FoodId'
    end
    object OrderItemDataSetCookingNames: TWideStringField
      FieldName = 'CookingNames'
      Size = 50
    end
    object OrderItemDataSetFoodId_1: TIntegerField
      FieldName = 'FoodId_1'
    end
    object OrderItemDataSetType: TWideStringField
      FieldName = 'Type'
      Size = 2
    end
    object OrderItemDataSetLarge: TIntegerField
      FieldName = 'Large'
    end
    object OrderItemDataSetMiddle: TIntegerField
      FieldName = 'Middle'
    end
    object OrderItemDataSetSmall: TIntegerField
      FieldName = 'Small'
    end
    object OrderItemDataSetIsDelete: TWideStringField
      FieldName = 'IsDelete'
      Size = 2
    end
    object OrderItemDataSetNagItem: TStringField
      FieldKind = fkCalculated
      FieldName = 'NagItem'
      Calculated = True
    end
    object OrderItemDataSetIsReturnShow: TWideStringField
      FieldKind = fkCalculated
      FieldName = 'IsReturnShow'
      Calculated = True
    end
    object OrderItemDataSetIsReturn: TWideStringField
      FieldName = 'IsReturn'
      Required = True
      Size = 2
    end
  end
end
