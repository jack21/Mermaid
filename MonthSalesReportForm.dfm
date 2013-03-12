object FormMonthSalesReport: TFormMonthSalesReport
  Left = 0
  Top = 60
  Caption = 'FormMonthSalesReport'
  ClientHeight = 1126
  ClientWidth = 811
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 19
  object MonthSalesReport: TQuickRep
    Left = 1
    Top = 0
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = MonthSalesDataSet
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
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
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
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    PrevShowThumbs = False
    PrevShowSearch = False
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stQRP
    object QRBand1: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 40
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
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object TitleLabel: TQRLabel
        Left = 0
        Top = 6
        Width = 718
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.083333333333340000
          0.000000000000000000
          15.875000000000000000
          1899.708333333333000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'TitleLabel'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 18
      end
    end
    object QRBand2: TQRBand
      Left = 38
      Top = 78
      Width = 718
      Height = 40
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
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel4: TQRLabel
        Left = 465
        Top = 11
        Width = 68
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1230.312500000000000000
          29.104166666666670000
          179.916666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #21934#20301
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRLabel3: TQRLabel
        Left = 390
        Top = 11
        Width = 68
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1031.875000000000000000
          29.104166666666670000
          179.916666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #32317#25976#37327
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRLabel2: TQRLabel
        Left = 191
        Top = 11
        Width = 189
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          505.354166666666700000
          29.104166666666670000
          500.062500000000100000)
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
      object QRLabel1: TQRLabel
        Left = 0
        Top = 11
        Width = 189
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          0.000000000000000000
          29.104166666666670000
          500.062500000000100000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #39006#21029
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
    end
    object QRBand3: TQRBand
      Left = 38
      Top = 145
      Width = 718
      Height = 27
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
        71.437500000000000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText4: TQRDBText
        Left = 465
        Top = 6
        Width = 68
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1230.312500000000000000
          15.875000000000000000
          179.916666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = MonthSalesDataSet
        DataField = 'Unit'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRDBText3: TQRDBText
        Left = 390
        Top = 6
        Width = 68
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1031.875000000000000000
          15.875000000000000000
          179.916666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = MonthSalesDataSet
        DataField = 'Total'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRDBText1: TQRDBText
        Left = 191
        Top = 6
        Width = 189
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          505.354166666666700000
          15.875000000000000000
          500.062500000000100000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = MonthSalesDataSet
        DataField = 'Name'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
    end
    object QRGroup1: TQRGroup
      Left = 38
      Top = 118
      Width = 718
      Height = 27
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
        71.437500000000000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'MonthSalesDataSet.TypeStr'
      Master = MonthSalesReport
      ReprintOnNewPage = False
      object QRDBText2: TQRDBText
        Left = 0
        Top = 6
        Width = 189
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          0.000000000000000000
          15.875000000000000000
          500.062500000000100000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = MonthSalesDataSet
        DataField = 'TypeStr'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
    end
  end
  object MonthSalesDataSet: TSimpleDataSet
    Aggregates = <>
    Connection = DM.GuduConnection
    DataSet.CommandText = 
      'SELECT *'#13#10'FROM'#13#10'('#13#10'  SELECT OrderItem.FoodId, Sum('#13#10'    CASE IsR' +
      'eturn'#13#10'    WHEN '#39'01'#39' THEN (0-Count)'#13#10'    ELSE Count'#13#10'    END'#13#10'  ' +
      ') AS Total'#13#10'  FROM OrderItem'#13#10'  WHERE FoodOrderId IN'#13#10'  ('#13#10'    S' +
      'ELECT FoodOrderId'#13#10'    FROM FoodOrder '#13#10'    WHERE DATE_FORMAT(Bu' +
      'ildTime,'#39'%Y/%m'#39') = :Month '#13#10'    AND Visible = '#39'01'#39#13#10'  )'#13#10'  GROUP' +
      ' BY OrderItem.FoodId'#13#10') FoodSummary'#13#10'LEFT JOIN Food ON FoodSumma' +
      'ry.FoodId = Food.FoodId'#13#10'ORDER BY Food.Type, FoodSummary.Total D' +
      'ESC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftUnknown
        Name = 'Month'
        ParamType = ptInput
      end>
    Params = <>
    OnCalcFields = MonthSalesDataSetCalcFields
    Left = 48
    Top = 16
    object MonthSalesDataSetName: TWideStringField
      FieldName = 'Name'
      Size = 100
    end
    object MonthSalesDataSetUnit: TWideStringField
      FieldName = 'Unit'
      Size = 10
    end
    object MonthSalesDataSetType: TWideStringField
      FieldName = 'Type'
      Size = 2
    end
    object MonthSalesDataSetTypeStr: TStringField
      FieldKind = fkCalculated
      FieldName = 'TypeStr'
      Calculated = True
    end
    object MonthSalesDataSetTotal: TFloatField
      FieldName = 'Total'
    end
  end
end
