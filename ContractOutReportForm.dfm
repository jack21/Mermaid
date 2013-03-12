object FormContractOutReport: TFormContractOutReport
  Left = 0
  Top = 0
  Caption = 'FormContractOutReport'
  ClientHeight = 875
  ClientWidth = 1604
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
  object ContractOutReport: TQuickRep
    Tag = 1
    Left = -96
    Top = -24
    Width = 1587
    Height = 2245
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = NameDataSet
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
    Zoom = 200
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    PreviewWidth = 1000
    PreviewHeight = 1000
    PrevShowThumbs = False
    PrevShowSearch = False
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stQRP
    object QRBand1: TQRBand
      Left = 378
      Top = 76
      Width = 756
      Height = 136
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
        179.916666666666700000
        1000.125000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRLabel1: TQRLabel
        Left = 0
        Top = 50
        Width = 74
        Height = 39
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          51.593750000000010000
          0.000000000000000000
          66.145833333333340000
          97.895833333333340000)
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
        Left = 81
        Top = 50
        Width = 86
        Height = 39
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          51.593750000000010000
          107.156250000000000000
          66.145833333333340000
          113.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM.FoodOrderDataSet
        DataField = 'Name'
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRLabel2: TQRLabel
        Left = 456
        Top = 50
        Width = 74
        Height = 39
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          51.593750000000010000
          603.250000000000000000
          66.145833333333340000
          97.895833333333340000)
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
        Left = 536
        Top = 50
        Width = 220
        Height = 39
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          51.593750000000010000
          709.083333333333400000
          66.145833333333340000
          291.041666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM.FoodOrderDataSet
        DataField = 'CustomerCount'
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRLabel3: TQRLabel
        Left = 0
        Top = 91
        Width = 106
        Height = 39
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          51.593750000000010000
          0.000000000000000000
          120.385416666666700000
          140.229166666666700000)
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
        Left = 119
        Top = 91
        Width = 154
        Height = 39
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          51.593750000000010000
          157.427083333333300000
          120.385416666666700000
          203.729166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM.FoodOrderDataSet
        DataField = 'DailySerial'
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRDBText4: TQRDBText
        Left = 614
        Top = 91
        Width = 142
        Height = 39
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          51.593750000000010000
          812.270833333333400000
          120.385416666666700000
          187.854166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM.FoodOrderDataSet
        DataField = 'BuildTime'
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object PrinterNoteLabel: TQRLabel
        Left = 0
        Top = 7
        Width = 756
        Height = 37
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          48.947916666666670000
          0.000000000000000000
          9.260416666666668000
          1000.125000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'PrinterNoteLabel'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRShape1: TQRShape
        Left = -1
        Top = 130
        Width = 757
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          3.968750000000000000
          -1.322916666666667000
          171.979166666666700000
          1001.447916666667000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
    end
    object QRBand2: TQRBand
      Left = 378
      Top = 212
      Width = 756
      Height = 62
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
        82.020833333333340000
        1000.125000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel4: TQRLabel
        Left = 0
        Top = 11
        Width = 756
        Height = 39
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          51.026785714285720000
          0.000000000000000000
          15.119047619047620000
          999.747023809524000000)
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
    end
    object QRBand3: TQRBand
      Left = 378
      Top = 274
      Width = 756
      Height = 42
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
        55.562500000000000000
        1000.125000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText6: TQRDBText
        Left = -1
        Top = 0
        Width = 757
        Height = 39
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          51.026785714285720000
          -1.889880952380953000
          0.000000000000000000
          1001.636904761905000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = NameDataSet
        DataField = 'FoodName'
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
    end
  end
  object NameDataSet: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 400
    Top = 440
    object NameDataSetFoodName: TStringField
      FieldName = 'FoodName'
    end
  end
end
