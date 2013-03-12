object FormMain: TFormMain
  Left = 0
  Top = 0
  Caption = #39184#26700
  ClientHeight = 735
  ClientWidth = 1016
  Color = clBtnFace
  Constraints.MinHeight = 550
  Constraints.MinWidth = 750
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
    1016
    735)
  PixelsPerInch = 96
  TextHeight = 23
  object ClockLabel: TLabel
    Left = 8
    Top = 686
    Width = 119
    Height = 23
    Anchors = [akLeft, akBottom]
    Caption = #26178#38291':00:00:00'
    Transparent = True
    ExplicitTop = 649
  end
  object ExitButton: TButton
    Left = 925
    Top = 666
    Width = 83
    Height = 65
    Anchors = [akRight, akBottom]
    Caption = #38626#38283
    Default = True
    ImageIndex = 1
    ModalResult = 2
    TabOrder = 0
    OnClick = ExitButtonClick
  end
  object TopPanel: TPanel
    Left = 0
    Top = 0
    Width = 1016
    Height = 43
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object ActionLabel: TLabel
      Left = 0
      Top = 0
      Width = 1016
      Height = 43
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      Caption = 'ActionLabel'
      Color = clSkyBlue
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
      ExplicitTop = 2
      ExplicitWidth = 859
      ExplicitHeight = 41
    end
  end
  object MainPanel: TPanel
    Left = 0
    Top = 43
    Width = 1016
    Height = 611
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelOuter = bvNone
    Caption = 'MainPanel'
    TabOrder = 2
    OnResize = MainPanelResize
    object TableGrid: TStringGrid
      Left = 0
      Top = 0
      Width = 1016
      Height = 611
      Align = alClient
      ColCount = 11
      DefaultDrawing = False
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
  object RefreshTableTimer: TTimer
    Enabled = False
    OnTimer = RefreshTableTimerTimer
    Left = 16
    Top = 64
  end
end
