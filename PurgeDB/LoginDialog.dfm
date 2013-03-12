inherited DialogLogin: TDialogLogin
  Caption = #30331#20837
  ClientHeight = 390
  ClientWidth = 578
  OnShow = FormShow
  ExplicitWidth = 584
  ExplicitHeight = 421
  PixelsPerInch = 96
  TextHeight = 23
  object Label1: TLabel [0]
    Left = 16
    Top = 67
    Width = 45
    Height = 23
    Caption = #23494#30908':'
  end
  object PwHintLabel: TLabel [1]
    Left = 215
    Top = 67
    Width = 76
    Height = 23
    Caption = #23494#30908#37679#35492
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label2: TLabel [2]
    Left = 16
    Top = 23
    Width = 45
    Height = 23
    Caption = #24115#34399':'
  end
  object CodeHintLabel: TLabel [3]
    Left = 215
    Top = 23
    Width = 76
    Height = 23
    Caption = #28961#27492#24115#34399
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object PrivilegeLabel: TLabel [4]
    Left = 103
    Top = 216
    Width = 76
    Height = 23
    Caption = #27402#38480#19981#36275
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  inherited OKButton: TButton
    Left = 395
    Top = 296
    OnMouseDown = LoginButtonMouseDown
    ExplicitLeft = 395
    ExplicitTop = 296
  end
  inherited CancelButton: TButton
    Left = 478
    Top = 296
    OnMouseDown = ExitButtonMouseDown
    ExplicitLeft = 478
    ExplicitTop = 296
  end
  object PasswordEdit: TEdit
    Left = 75
    Top = 64
    Width = 134
    Height = 31
    NumbersOnly = True
    PasswordChar = '*'
    TabOrder = 2
    Text = '0000'
    OnMouseDown = PasswordEditMouseDown
  end
  object Button1: TButton
    Left = 312
    Top = 21
    Width = 83
    Height = 65
    Caption = '1'
    TabOrder = 3
    OnMouseDown = Button1MouseDown
  end
  object Button2: TButton
    Left = 395
    Top = 21
    Width = 83
    Height = 65
    Caption = '2'
    TabOrder = 4
    OnMouseDown = Button2MouseDown
  end
  object Button3: TButton
    Left = 478
    Top = 21
    Width = 83
    Height = 65
    Caption = '3'
    TabOrder = 5
    OnMouseDown = Button3MouseDown
  end
  object Button4: TButton
    Left = 312
    Top = 86
    Width = 83
    Height = 65
    Caption = '4'
    TabOrder = 6
    OnMouseDown = Button4MouseDown
  end
  object Button5: TButton
    Left = 395
    Top = 86
    Width = 83
    Height = 65
    Caption = '5'
    TabOrder = 7
    OnMouseDown = Button5MouseDown
  end
  object Button6: TButton
    Left = 478
    Top = 86
    Width = 83
    Height = 65
    Caption = '6'
    TabOrder = 8
    OnMouseDown = Button6MouseDown
  end
  object Button7: TButton
    Left = 312
    Top = 151
    Width = 83
    Height = 65
    Caption = '7'
    TabOrder = 9
    OnMouseDown = Button7MouseDown
  end
  object Button8: TButton
    Left = 395
    Top = 151
    Width = 83
    Height = 65
    Caption = '8'
    TabOrder = 10
    OnMouseDown = Button8MouseDown
  end
  object Button9: TButton
    Left = 478
    Top = 151
    Width = 83
    Height = 65
    Caption = '9'
    TabOrder = 11
    OnMouseDown = Button9MouseDown
  end
  object Button0: TButton
    Left = 312
    Top = 216
    Width = 83
    Height = 65
    Caption = '0'
    TabOrder = 12
    OnMouseDown = Button0MouseDown
  end
  object BackButton: TButton
    Left = 395
    Top = 216
    Width = 83
    Height = 65
    Caption = #28040#21435
    TabOrder = 13
    OnMouseDown = BackButtonMouseDown
  end
  object DeleteButton: TButton
    Left = 478
    Top = 216
    Width = 83
    Height = 65
    Caption = #21034#38500
    TabOrder = 14
    OnMouseDown = DeleteButtonMouseDown
  end
  object CodeEdit: TEdit
    Left = 75
    Top = 20
    Width = 134
    Height = 31
    NumbersOnly = True
    TabOrder = 15
    Text = '001'
    OnMouseDown = CodeEditMouseDown
  end
  object EmployeeTable: TSQLTable
    MaxBlobSize = -1
    SQLConnection = DM.GuduConnection
    TableName = 'employee'
    Left = 96
    Top = 96
  end
end
