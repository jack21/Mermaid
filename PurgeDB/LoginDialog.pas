unit LoginDialog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, StrUtils, FMTBcd, DB, SqlExpr, BaseDialog;

type
  TDialogLogin = class(TFormBaseDialog)
    Label1: TLabel;
    PwHintLabel: TLabel;
    Label2: TLabel;
    CodeHintLabel: TLabel;
    PasswordEdit: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button0: TButton;
    BackButton: TButton;
    DeleteButton: TButton;
    CodeEdit: TEdit;
    EmployeeTable: TSQLTable;
    PrivilegeLabel: TLabel;
    procedure FormShow(Sender: TObject);
    procedure EmployeeGridSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure Button1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button5MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button6MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button7MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button8MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button9MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button0MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BackButtonMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DeleteButtonMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CodeEditMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PasswordEditMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ExitButtonMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure LoginButtonMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
    LastEdit: TCustomEdit;
    LastEditFirstInput: boolean; // 是否第一次輸入
    EmployeeName: String;
    procedure KeyLastEdit(Char: String);
    procedure SetLastEdit(Edit: TObject);
  public
    { Public declarations }
  end;

var
  DialogLogin: TDialogLogin;

implementation

uses MainForm;

{$R *.dfm}


procedure TDialogLogin.BackButtonMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  LastEdit.Text := LeftStr(LastEdit.Text, Length(LastEdit.Text) - 1);
  LastEditFirstInput := false;
end;

procedure TDialogLogin.Button0MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  KeyLastEdit('0');
end;

procedure TDialogLogin.Button1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  KeyLastEdit('1');
end;

procedure TDialogLogin.Button2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  KeyLastEdit('2');
end;

procedure TDialogLogin.Button3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  KeyLastEdit('3');
end;

procedure TDialogLogin.Button4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  KeyLastEdit('4');
end;

procedure TDialogLogin.Button5MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  KeyLastEdit('5');
end;

procedure TDialogLogin.Button6MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  KeyLastEdit('6');
end;

procedure TDialogLogin.Button7MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  KeyLastEdit('7');
end;

procedure TDialogLogin.Button8MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  KeyLastEdit('8');
end;

procedure TDialogLogin.Button9MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  KeyLastEdit('9');
end;

procedure TDialogLogin.CodeEditMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  SetLastEdit(sender);
end;

procedure TDialogLogin.DeleteButtonMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  LastEdit.Clear;
  LastEditFirstInput := true;
end;

{Table Cell 選到時，把該 Table 的員工姓名記下來，讓後登入時可以抓到}
procedure TDialogLogin.EmployeeGridSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
var
  Grid: TStringGrid;
begin
  Grid := Sender AS TStringGrid;
  if Grid.Cells[ACol, ARow] = '' then
  begin
    CanSelect := false;
    exit;
  end;

  EmployeeName := Grid.Cells[ACol, ARow];
end;

procedure TDialogLogin.ExitButtonMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Close;
end;

procedure TDialogLogin.FormShow(Sender: TObject);
//var
//  ColIndex: Integer;
//  RowIndex: Integer;
//  FirstRecord: Boolean;
begin
  CodeEdit.Clear;
  PasswordEdit.Clear;
  SetLastEdit(CodeEdit);
//  CodeEdit.Text := '001';
//  PasswordEdit.Text := '0000';
  EmployeeTable.Open;
  EmployeeTable.Refresh;

//  ColIndex := 0;
//  RowIndex := 0;
//  FirstRecord := true;
//
//  EmployeeTable.Open;
//  EmployeeTable.First;
//  while not EmployeeTable.Eof do
//  begin
//    EmployeeGrid.Cells[ColIndex, RowIndex] := EmployeeTable.FieldByName('Name').AsString;
//
//    // 記下第一個人的名字，因為 EmployeeGrid 預設會選第一個，
//    // 但不會觸發 EmployeeGridSelectCell 事件，導致直接登入會找不到名字錯
//    if FirstRecord then
//    begin
//      EmployeeName := EmployeeTable.FieldByName('Name').AsString;
//      FirstRecord := false;
//    end;
//
//    if RowIndex + 1 = EmployeeGrid.RowCount then
//    begin
//      RowIndex := 0;
//      ColIndex := ColIndex + 1;
//    end
//    else
//    begin
//      RowIndex := RowIndex + 1;
//    end;
//
//    EmployeeTable.Next;
//  end;
//
//  PasswordEdit.Text := '0000';
//  PasswordEdit.SetFocus;
end;

{登入}
procedure TDialogLogin.LoginButtonMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  Password: String;
begin
  CodeHintLabel.Hide;
  PwHintLabel.Hide;
  PrivilegeLabel.Hide;

  if not EmployeeTable.Locate('EmployeeCode', CodeEdit.Text, []) then
  begin
    CodeHintLabel.Show;
    CodeEdit.SetFocus;
    SetLastEdit(CodeEdit);
    exit;
  end;

  // 驗證密碼
  Password := EmployeeTable.FieldByName('Password').AsString;
  if (Password <> PasswordEdit.Text) then
  begin
    PasswordEdit.Text := '';
    PwHintLabel.Show;
    PasswordEdit.SetFocus;
    SetLastEdit(PasswordEdit);
    exit;
  end;

  // 驗證權限
  if EmployeeTable.FieldByName('Eraser').AsString <> '01' then
  begin
    PrivilegeLabel.Show;
    CodeEdit.SetFocus;
    SetLastEdit(CodeEdit);
    exit;
  end;

//  ModalResult := mrOK;
  Hide;
end;

procedure TDialogLogin.PasswordEditMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  SetLastEdit(sender);
end;

procedure TDialogLogin.KeyLastEdit(Char: String);
begin
  if LastEditFirstInput then
  begin
    LastEdit.Text := Char;
    LastEditFirstInput := false;
  end
  else
  begin
    LastEdit.Text := LastEdit.Text + Char;
  end;
end;


procedure TDialogLogin.SetLastEdit(Edit: TObject);
begin
  LastEdit := (Edit as TCustomEdit);
  LastEditFirstInput := true;
end;



end.
