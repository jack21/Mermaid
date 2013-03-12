unit NumKeyboardForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, StrUtils;

type
  TFormNumKeyboard = class(TForm)
    ConfirmButton: TButton;
    CancelButton: TButton;
    Button0: TButton;
    Button9: TButton;
    Button8: TButton;
    Button7: TButton;
    Button6: TButton;
    Button5: TButton;
    Button4: TButton;
    Button3: TButton;
    Button2: TButton;
    Button1: TButton;
    Panel1: TPanel;
    BackButton: TButton;
    DeleteButton: TButton;
    ButtonDot: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
    procedure CancelButtonMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Key(Char: String);
    procedure ButtonDotMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
    Edit: TCustomEdit;
    OrgEditText: String;
    FirstInput: Boolean;
  public
    { Public declarations }
    function ShowKeyboard(Edit: TCustomEdit): Integer;
  end;

var
  FormNumKeyboard: TFormNumKeyboard;

implementation

uses DataModule;

{$R *.dfm}

procedure TFormNumKeyboard.BackButtonMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Edit.Text := LeftStr(Edit.Text, Length(Edit.Text) - 1);
end;

procedure TFormNumKeyboard.Button0MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Key('0');
end;

procedure TFormNumKeyboard.Button1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Key('1');
end;

procedure TFormNumKeyboard.Button2MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Key('2');
end;

procedure TFormNumKeyboard.Button3MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Key('3');
end;

procedure TFormNumKeyboard.Button4MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Key('4');
end;

procedure TFormNumKeyboard.Button5MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Key('5');
end;

procedure TFormNumKeyboard.Button6MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Key('6');
end;

procedure TFormNumKeyboard.Button7MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Key('7');
end;

procedure TFormNumKeyboard.Button8MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Key('8');
end;

procedure TFormNumKeyboard.Button9MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Key('9');
end;

procedure TFormNumKeyboard.ButtonDotMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Key('.');
end;

procedure TFormNumKeyboard.CancelButtonMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Edit.Text := OrgEditText;
end;

procedure TFormNumKeyboard.DeleteButtonMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Edit.Clear;
end;

procedure TFormNumKeyboard.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Edit := nil;
end;

function TFormNumKeyboard.ShowKeyboard(Edit: TCustomEdit): Integer;
var
  Screen :TScreen;
begin
  self.Edit := Edit;
  OrgEditText := Edit.Text;
  FirstInput := true;

  // ¶Ï∏m
  Screen := TScreen.Create(application);
  Top := Edit.ClientOrigin.Y + Edit.Height;
  if Top + Height > Screen.Height then
  begin
    Top := Edit.ClientOrigin.Y - Height - 5;
  end;
  Left := Edit.ClientOrigin.X - 2;
  Screen.Free;

  // ≈„•‹
  result := ShowModal;
end;

procedure TFormNumKeyboard.Key(Char: String);
begin
  if FirstInput then
    Edit.Text := Char
  else
    Edit.Text := Edit.Text + Char;

  FirstInput := false;
end;

end.
