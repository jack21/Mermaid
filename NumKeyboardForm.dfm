object FormNumKeyboard: TFormNumKeyboard
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FormNumKeyboard'
  ClientHeight = 340
  ClientWidth = 264
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 23
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 264
    Height = 340
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Button0: TButton
      Left = 8
      Top = 203
      Width = 83
      Height = 65
      Caption = '0'
      TabOrder = 0
      OnMouseDown = Button0MouseDown
    end
    object Button1: TButton
      Left = 8
      Top = 8
      Width = 83
      Height = 65
      Caption = '1'
      TabOrder = 1
      OnMouseDown = Button1MouseDown
    end
    object Button2: TButton
      Left = 91
      Top = 8
      Width = 83
      Height = 65
      Caption = '2'
      TabOrder = 2
      OnMouseDown = Button2MouseDown
    end
    object Button3: TButton
      Left = 174
      Top = 8
      Width = 83
      Height = 65
      Caption = '3'
      TabOrder = 3
      OnMouseDown = Button3MouseDown
    end
    object Button4: TButton
      Left = 8
      Top = 73
      Width = 83
      Height = 65
      Caption = '4'
      TabOrder = 4
      OnMouseDown = Button4MouseDown
    end
    object Button5: TButton
      Left = 91
      Top = 73
      Width = 83
      Height = 65
      Caption = '5'
      TabOrder = 5
      OnMouseDown = Button5MouseDown
    end
    object Button6: TButton
      Left = 174
      Top = 73
      Width = 83
      Height = 65
      Caption = '6'
      TabOrder = 6
      OnMouseDown = Button6MouseDown
    end
    object Button7: TButton
      Left = 8
      Top = 138
      Width = 83
      Height = 65
      Caption = '7'
      TabOrder = 7
      OnMouseDown = Button7MouseDown
    end
    object Button8: TButton
      Left = 91
      Top = 138
      Width = 83
      Height = 65
      Caption = '8'
      TabOrder = 8
      OnMouseDown = Button8MouseDown
    end
    object Button9: TButton
      Left = 174
      Top = 138
      Width = 83
      Height = 65
      Caption = '9'
      TabOrder = 9
      OnMouseDown = Button9MouseDown
    end
    object CancelButton: TButton
      Left = 91
      Top = 268
      Width = 83
      Height = 65
      Caption = #21462#28040
      ImageIndex = 1
      Images = DM.ImageList
      ModalResult = 2
      TabOrder = 10
      OnMouseDown = CancelButtonMouseDown
    end
    object ConfirmButton: TButton
      Left = 174
      Top = 268
      Width = 83
      Height = 65
      Caption = #30906#23450
      Default = True
      ImageIndex = 0
      Images = DM.ImageList
      ModalResult = 1
      TabOrder = 11
    end
    object BackButton: TButton
      Left = 91
      Top = 203
      Width = 83
      Height = 65
      Caption = #28040#21435
      TabOrder = 12
      OnMouseDown = BackButtonMouseDown
    end
    object DeleteButton: TButton
      Left = 174
      Top = 203
      Width = 83
      Height = 65
      Caption = #21034#38500
      TabOrder = 13
      OnMouseDown = DeleteButtonMouseDown
    end
    object ButtonDot: TButton
      Left = 8
      Top = 268
      Width = 83
      Height = 65
      Caption = #65294
      TabOrder = 14
      OnMouseDown = ButtonDotMouseDown
    end
  end
end
